.class public final Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "LayoutComponentsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;
    }
.end annotation


# static fields
.field private static final EMPTY_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS_ENABLED:Z

.field private static final HIDE_SHOW_MORE_BUTTON_ENABLED:Z

.field private static final HIDE_YOUTUBE_DOODLES_ENABLED:Z

.field private static final accountBottomItemLegacyDepths:[I

.field private static final accountBottomItemModernDepths:[I

.field private static final accountMenuFilterStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final accountTopItemDepths:[I

.field private static cachedButtonContainerMinimumHeight:I

.field private static cachedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private static cachedPlaceHolderMinimumHeight:I

.field private static cachedRootViewMinimumHeight:I

.field private static final channelTabFilterStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final flyoutMenuFilterStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mixPlaylistUrlBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private static final mixPlaylistsBuffersExceptions:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private static final singleItemInformationPanelIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final channelProfile:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final channelProfileGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

.field private final chipBar:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final communityPosts:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final compactChannelBarInner:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final compactChannelBarInnerButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final exceptions:Lcom/gold/extension/shared/StringTrieSearch;

.field private final expandableMetadata:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final joinMembershipButton:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private final notifyMe:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final productCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private final searchFriction:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final singleItemInformationPanel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final summaryCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private final surveys:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final videoLabels:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final videoLabelsGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;


# direct methods
.method public static synthetic $r8$lambda$DIcKO47etY5cAzcNLGlytBB2y44()Ljava/lang/String;
    .registers 1

    .line 505
    const-string v0, "Filtered mix playlist"

    return-object v0
.end method

.method public static synthetic $r8$lambda$GaH420p8ZqsHTDOvXRbWdZMIW78()Ljava/lang/String;
    .registers 1

    .line 509
    const-string v0, "filterMixPlaylists failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$GjHy_OzauPAoKVxTZ2NA4nx0Qxw()Ljava/lang/String;
    .registers 1

    .line 763
    const-string v0, "modifyFeedSubtitleSpan failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$J1bUJPOUYaZHGG-n7Wbr2iWhTNU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hiding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l9d87WU2IoTScIOy66FDn3XEnUk()Ljava/lang/String;
    .registers 1

    .line 499
    const-string v0, "buffer is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mvSaShjkRh8_0CDNPECzau8SEWc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hiding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o3EiUdFg-g7pM8fyclFgoiDbs80(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remove search suggestion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$odS1X3TpRlFXB5NB7ShUwYirTZA(Landroid/text/SpannableString;Landroid/text/SpannableString;)Ljava/lang/String;
    .registers 4

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replacing feed subtitle span: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v1, "cell_description_body"

    const-string v2, "channel_profile"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->mixPlaylistsBuffersExceptions:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 52
    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v1, "?list=RD"

    const-string v3, "&list=RD"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->mixPlaylistUrlBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 58
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_TAB_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->getFilterStrings(Lcom/gold/extension/shared/settings/StringSetting;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->channelTabFilterStrings:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEED_FLYOUT_MENU_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->getFilterStrings(Lcom/gold/extension/shared/settings/StringSetting;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->flyoutMenuFilterStrings:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->singleItemInformationPanelIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 568
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 569
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS_ENABLED:Z

    .line 594
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOUTUBE_DOODLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_YOUTUBE_DOODLES_ENABLED:Z

    .line 606
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->EMPTY_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 607
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHOW_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_SHOW_MORE_BUTTON_ENABLED:Z

    .line 616
    sput v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedButtonContainerMinimumHeight:I

    .line 617
    sput v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedPlaceHolderMinimumHeight:I

    .line 618
    sput v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedRootViewMinimumHeight:I

    .line 886
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ACCOUNT_MENU_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->getFilterStrings(Lcom/gold/extension/shared/settings/StringSetting;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountMenuFilterStrings:Ljava/util/List;

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 887
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountTopItemDepths:[I

    const/4 v2, 0x4

    .line 888
    filled-new-array {v2, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountBottomItemModernDepths:[I

    .line 889
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountBottomItemLegacyDepths:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 42

    move-object/from16 v0, p0

    .line 88
    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 61
    new-instance v1, Lcom/gold/extension/shared/StringTrieSearch;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->exceptions:Lcom/gold/extension/shared/StringTrieSearch;

    .line 78
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v2, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->videoLabelsGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 89
    const-string v3, "|comment."

    const-string v4, "library_recent_shelf"

    const-string v5, "comment_thread"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gold/extension/shared/StringTrieSearch;->addPatterns([Ljava/lang/Object;)V

    .line 97
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMPACT_BANNER:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "cell_divider"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 104
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HORIZONTAL_SHELVES:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "chips_shelf"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 109
    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LIVE_CHAT_REPLAY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "live_chat_ep_entrypoint.e"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 114
    filled-new-array {v1, v4, v6}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 122
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMUNITY_POSTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v20, "videos_post_responsive_root.e"

    const-string v21, "videos_post_root.e"

    const-string v6, "images_post_root.e"

    const-string v7, "images_post_root_slim.e"

    const-string v8, "images_post_slim.e"

    const-string v9, "options_post_root.e"

    const-string v10, "poll_post_responsive_root.e"

    const-string v11, "poll_post_root.e"

    const-string v12, "post_base_wrapper"

    const-string v13, "post_base_wrapper_slim.e"

    const-string v14, "post_shelf_slim.e"

    const-string v15, "shared_post_responsive_root.e"

    const-string v16, "shared_post_root.e"

    const-string v17, "text_post_responsive_root.e"

    const-string v18, "text_post_root.e"

    const-string v19, "text_post_root_slim.e"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->communityPosts:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 142
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBERS_COMMUNITY_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "sponsorships_comments_upsell"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 147
    new-instance v9, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MEMBERS_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "member_recognition_shelf"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v6, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 152
    new-instance v13, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v6, "compact_banner"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v3, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 157
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CROWDFUNDING_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "donation_shelf"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 162
    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "subscriptions_chip_bar"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 167
    new-instance v7, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBED_CHANNELS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "subscriptions_channel_bar"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 172
    new-instance v12, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "chip_bar"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v8, v10}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v12, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->chipBar:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 177
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SURVEYS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v11, "slimline_survey"

    const-string v14, "feed_nudge"

    const-string v15, "in_feed_survey"

    filled-new-array {v15, v11, v14}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v8, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->surveys:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 184
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MEDICAL_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v14, "medical_panel"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v14}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 189
    new-instance v11, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v15, "publisher_transparency_panel"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 194
    new-instance v15, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v16, "search_friction"

    move-object/from16 v17, v1

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v14, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v15, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->searchFriction:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 199
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v16, "single_item_information_panel"

    move-object/from16 v18, v3

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v14, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->singleItemInformationPanel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 204
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->HIDE_POSTS_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v16, "post_shelf"

    move-object/from16 v28, v1

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v14, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object/from16 v32, v8

    .line 209
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LINKS_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v14, "attribution.e"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v1, v14}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EMERGENCY_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v16, "emergency_onebox"

    move-object/from16 v26, v3

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v14, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object/from16 v29, v7

    .line 225
    new-instance v7, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "multi_feed_icon_button"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-direct {v7, v14, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object/from16 v31, v6

    .line 230
    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ARTIST_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v16, "official_card"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v3, v14}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 235
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v14, "expandable_metadata"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-direct {v3, v1, v14}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v3, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->expandableMetadata:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 240
    new-instance v14, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v19, "gstatic.com/shopping"

    move-object/from16 v20, v3

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v1, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v14, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->productCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 245
    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v14, "PAfeedback_genai"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v1, v14}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v3, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->summaryCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 250
    new-instance v14, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "compact_channel_bar"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v1, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYABLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v30, v4

    const-string v4, "horizontal_gaming_shelf.e"

    move-object/from16 v21, v6

    const-string v6, "mini_game_card.e"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 261
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_IMAGE_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "image_shelf"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 266
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TIMED_REACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v25, v1

    const-string v1, "emoji_control_panel"

    move-object/from16 v22, v3

    const-string v3, "timed_reaction"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 272
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NOTIFY_ME_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "set_reminder_button"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->notifyMe:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-object/from16 v27, v15

    .line 277
    new-instance v15, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_JOIN_MEMBERSHIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "compact_channel_bar_inner"

    move-object/from16 v24, v1

    const-string v1, "video_description_header"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v3, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v15, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->compactChannelBarInner:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 283
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "|button.e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->compactChannelBarInnerButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 288
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v3, "sponsorships"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->joinMembershipButton:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-object/from16 v6, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v11

    .line 293
    new-instance v11, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_WATERMARK:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "featured_channel_watermark_overlay"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v1, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "mixed_content_shelf"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 303
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_RECOMMENDATION_LABELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v23, "endorsement_header_footer.e"

    move-object/from16 v33, v1

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 308
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_TITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v23, "player_overlay_video_heading.e"

    move-object/from16 v36, v3

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 313
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_WEB_SEARCH_RESULTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v35, v1

    const-string v1, "web_link_panel"

    move-object/from16 v23, v4

    const-string v4, "web_result_panel"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 319
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v4, "|badge.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->videoLabels:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 323
    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AUTO_DUBBED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v34, v1

    const-string v1, "yt_outline_person_radar"

    move-object/from16 v37, v3

    const-string v3, "yt_outline_experimental_person_waves"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HYPED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "yt_fill_star_shooting"

    move-object/from16 v38, v6

    const-string v6, "yt_fill_experimental_hype"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v4, v1}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    move-object/from16 v19, v20

    move-object/from16 v20, v33

    const/4 v1, 0x0

    move-object/from16 v33, v23

    move-object/from16 v23, v10

    .line 336
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v2, "channel_profile.e"

    const-string v3, "page_header.e"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v10, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->channelProfile:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 341
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;-><init>()V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->channelProfileGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    .line 342
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMUNITY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "community_button"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_JOIN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "sponsor_button"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_STORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "header_store_button"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v5, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBE_BUTTON_IN_CHANNEL_PAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v39, "subscribe_button"

    move-object/from16 v40, v7

    filled-new-array/range {v39 .. v39}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v2, v3, v4, v5}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    move-object/from16 v6, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v38

    move-object/from16 v7, v40

    .line 361
    filled-new-array/range {v6 .. v37}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method

.method public static filterMixPlaylists([B)Z
    .registers 3
    .param p0  # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 494
    :try_start_1
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MIX_PLAYLISTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    if-nez p0, :cond_1b

    .line 499
    new-instance p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v0

    :catch_19
    move-exception p0

    goto :goto_3d

    .line 503
    :cond_1b
    sget-object v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->mixPlaylistsBuffersExceptions:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_45

    sget-object v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->mixPlaylistUrlBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 504
    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 505
    new-instance p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_19

    const/4 p0, 0x1

    return p0

    .line 509
    :goto_3d
    new-instance v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_45
    return v0
.end method

.method public static handleLegacySnackbar(Landroid/view/View;)V
    .registers 2

    .line 963
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SNACKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 964
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->hideViewByLayoutParams(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 965
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public static hideAccountBottomItemLegacy(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    .line 909
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountBottomItemLegacyDepths:[I

    invoke-static {p0, p1, v0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->hideAccountItem(Landroid/view/View;Ljava/lang/CharSequence;[I)V

    return-void
.end method

.method public static hideAccountBottomItemModern(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    .line 902
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountBottomItemModernDepths:[I

    invoke-static {p0, p1, v0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->hideAccountItem(Landroid/view/View;Ljava/lang/CharSequence;[I)V

    return-void
.end method

.method private static hideAccountItem(Landroid/view/View;Ljava/lang/CharSequence;[I)V
    .registers 8

    .line 913
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ACCOUNT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    if-nez p1, :cond_f

    goto :goto_66

    .line 914
    :cond_f
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountMenuFilterStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_66

    .line 916
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 920
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 921
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 930
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3d
    if-ge v1, p1, :cond_66

    aget v2, p2, v1

    .line 931
    invoke-static {p0, v2}, Lcom/gold/extension/shared/Utils;->getParentView(Landroid/view/View;I)Landroid/view/ViewParent;

    move-result-object v2

    .line 932
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_63

    check-cast v2, Landroid/view/View;

    .line 933
    invoke-static {v2}, Lcom/gold/extension/shared/Utils;->hideViewByLayoutParams(Landroid/view/View;)V

    const/16 v3, 0x8

    .line 934
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 935
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_63

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 936
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 937
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_66
    :goto_66
    return-void
.end method

.method public static hideAccountTopItem(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    .line 895
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->accountTopItemDepths:[I

    invoke-static {p0, p1, v0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->hideAccountItem(Landroid/view/View;Ljava/lang/CharSequence;[I)V

    return-void
.end method

.method public static hideAlbumCard(Landroid/view/View;)V
    .registers 2

    .line 526
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ALBUM_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewBy0dpUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideChannelTab(Ljava/lang/String;)Z
    .registers 4
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 833
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_TAB:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->channelTabFilterStrings:Ljava/util/List;

    .line 834
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_34

    .line 838
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 839
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    return v1
.end method

.method public static hideCrowdfundingBox(Landroid/view/View;)V
    .registers 2

    .line 533
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CROWDFUNDING_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewBy0dpUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideFloatingMicrophoneButton(Z)Z
    .registers 1

    if-nez p0, :cond_11

    .line 540
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FLOATING_MICROPHONE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static hideFlyoutMenu(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_3a

    .line 779
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEED_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->flyoutMenuFilterStrings:Ljava/util/List;

    .line 780
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_3a

    .line 784
    :cond_17
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 787
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 788
    new-instance p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda7;

    invoke-direct {p0, v1}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    :cond_3a
    :goto_3a
    return-object p0
.end method

.method public static hideFlyoutMenu(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4

    if-eqz p1, :cond_46

    .line 805
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEED_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->flyoutMenuFilterStrings:Ljava/util/List;

    .line 806
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_46

    check-cast p0, Landroid/view/View;

    .line 811
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 814
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 815
    new-instance v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 816
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->hideViewByLayoutParams(Landroid/view/View;)V

    goto :goto_28

    :cond_46
    return-void
.end method

.method public static hideInFeed(I)I
    .registers 2

    .line 554
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static hideInRelatedVideos(I)I
    .registers 2

    .line 575
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS_ENABLED:Z

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method public static hideInRelatedVideos(Landroid/view/View;)V
    .registers 2

    .line 591
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS_ENABLED:Z

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideInRelatedVideos(Z)Z
    .registers 2

    .line 584
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS_ENABLED:Z

    if-nez v0, :cond_9

    if-eqz p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static hideInSearch(I)I
    .registers 2

    .line 563
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static hideLatestVideosButton(Landroid/view/View;)V
    .registers 2

    .line 547
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LATEST_VIDEOS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method public static hideLithoSnackBar(Landroid/widget/FrameLayout;)V
    .registers 2

    .line 954
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SNACKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 955
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->hideViewByLayoutParams(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public static hideSearchTermThumbnails()Z
    .registers 1

    .line 851
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SEARCH_TERM_THUMBNAILS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hideShowMoreButton(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .registers 8

    .line 624
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_SHOW_MORE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_52

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

    .line 625
    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_52

    if-eqz p2, :cond_52

    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_52

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 634
    instance-of v3, v2, Landroid/widget/FrameLayout;

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v3, :cond_31

    .line 641
    invoke-static {v2, p2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->hideShowMoreButtonWithPlaceHolder(Landroid/view/View;Z)V

    goto :goto_34

    .line 643
    :cond_31
    invoke-static {p1, v0, p2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->hideShowMoreButtonWithOutPlaceHolder(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 646
    :goto_34
    sget p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedRootViewMinimumHeight:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3f

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    sput p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedRootViewMinimumHeight:I

    :cond_3f
    if-eqz p2, :cond_4a

    .line 651
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 p1, 0x8

    .line 652
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 654
    :cond_4a
    sget p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedRootViewMinimumHeight:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 655
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    return-void
.end method

.method private static hideShowMoreButtonWithOutPlaceHolder(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .registers 5

    .line 676
    sget v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedButtonContainerMinimumHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 677
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedButtonContainerMinimumHeight:I

    .line 680
    :cond_b
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_11

    .line 681
    sput-object p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    :cond_11
    const/4 p1, 0x0

    if-eqz p2, :cond_22

    .line 685
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 686
    sget-object p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->EMPTY_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    .line 687
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 689
    :cond_22
    sget p2, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedButtonContainerMinimumHeight:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 690
    sget-object p2, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static hideShowMoreButtonWithPlaceHolder(Landroid/view/View;Z)V
    .registers 4

    .line 661
    sget v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedPlaceHolderMinimumHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedPlaceHolderMinimumHeight:I

    :cond_b
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 666
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 p1, 0x8

    .line 667
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 669
    :cond_17
    sget p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->cachedPlaceHolderMinimumHeight:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 670
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static hideSnackbar()Z
    .registers 1

    .line 947
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SNACKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hideSubscribedChannelsBar(I)I
    .registers 2

    .line 706
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBED_CHANNELS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static hideSubscribedChannelsBar(Landroid/view/View;)V
    .registers 2

    .line 699
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBED_CHANNELS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewByRemovingFromParentUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideSyncButton(Landroid/view/View;)V
    .registers 2

    .line 973
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SYNC_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewBy0dpUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideYouMayLikeSection(Ljava/lang/String;)Z
    .registers 2

    .line 861
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOU_MAY_LIKE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 864
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static isSearchHistory(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 879
    const-string v0, "/delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-nez p1, :cond_17

    .line 881
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_17
    return p1
.end method

.method public static modifyFeedSubtitleSpan(Landroid/text/SpannableString;F)Landroid/text/SpannableString;
    .registers 7

    .line 716
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIEW_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 717
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_UPLOAD_TIME:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    goto :goto_3f

    :cond_19
    const/high16 v2, 0x41800000  # 16.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_25

    const/high16 v2, 0x42280000  # 42.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_3f

    .line 724
    :cond_25
    const-string p1, " · "

    .line 728
    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-gez v2, :cond_2e

    goto :goto_3f

    :cond_2e
    add-int/lit8 v3, v2, 0x3

    .line 733
    invoke-static {p0, p1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    if-gez v3, :cond_37

    goto :goto_3f

    :cond_37
    add-int/lit8 v4, v3, 0x3

    .line 740
    invoke-static {p0, p1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    if-ltz p1, :cond_40

    :cond_3f
    :goto_3f
    return-object p0

    .line 746
    :cond_40
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_51

    .line 750
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_51

    :catch_4f
    move-exception p1

    goto :goto_64

    :cond_51
    :goto_51
    if-eqz v0, :cond_56

    .line 754
    invoke-virtual {p1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 757
    :cond_56
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 758
    new-instance p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda4;-><init>(Landroid/text/SpannableString;Landroid/text/SpannableString;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_4f

    return-object v0

    .line 763
    :goto_64
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static setDoodleDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 600
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->HIDE_YOUTUBE_DOODLES_ENABLED:Z

    if-eqz v0, :cond_8

    .line 601
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch;->getDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 603
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static showWatermark()Z
    .registers 1

    .line 519
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_WATERMARK:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 408
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->exceptions:Lcom/gold/extension/shared/StringTrieSearch;

    invoke-virtual {p2, p4}, Lcom/gold/extension/shared/StringTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p2

    const/4 p6, 0x0

    if-eqz p2, :cond_a

    return p6

    .line 416
    :cond_a
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->searchFriction:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_14

    .line 417
    sget-object p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->singleItemInformationPanelIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p6

    .line 420
    :cond_14
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->singleItemInformationPanel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p8, 0x1

    if-ne p7, p2, :cond_2f

    .line 421
    sget-object p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->singleItemInformationPanelIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ltz p1, :cond_2e

    const/16 p2, 0x9

    if-ge p1, p2, :cond_29

    .line 424
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_2d

    :cond_29
    const/4 p1, -0x1

    .line 426
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_2d
    return p6

    :cond_2e
    return p8

    .line 436
    :cond_2f
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->notifyMe:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-eq p7, p2, :cond_e6

    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->surveys:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_39

    goto/16 :goto_e6

    .line 440
    :cond_39
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->expandableMetadata:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_87

    .line 441
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPANDABLE_CARD:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    .line 442
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, p8, :cond_7c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_71

    const/4 p2, 0x3

    if-eq p1, p2, :cond_56

    const/4 p0, 0x4

    if-eq p1, p0, :cond_55

    return p6

    :cond_55
    return p8

    .line 453
    :cond_56
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->summaryCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p1, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->productCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 454
    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_6f

    goto :goto_70

    :cond_6f
    return p6

    :cond_70
    :goto_70
    return p8

    .line 450
    :cond_71
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->summaryCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 447
    :cond_7c
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->productCardBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 462
    :cond_87
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->videoLabels:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_96

    .line 463
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->videoLabelsGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 466
    :cond_96
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->channelProfile:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_a5

    .line 467
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->channelProfileGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    invoke-virtual {p0, p3}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 470
    :cond_a5
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->communityPosts:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_b8

    .line 471
    invoke-interface {p1}, Lcom/gold/extension/shared/patches/components/ContextInterface;->isHomeFeedOrRelatedVideo()Z

    move-result p0

    if-nez p0, :cond_b7

    invoke-interface {p1}, Lcom/gold/extension/shared/patches/components/ContextInterface;->isSubscriptionOrLibrary()Z

    move-result p0

    if-eqz p0, :cond_b6

    goto :goto_b7

    :cond_b6
    return p6

    :cond_b7
    :goto_b7
    return p8

    .line 474
    :cond_b8
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->compactChannelBarInner:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_d6

    .line 475
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->compactChannelBarInnerButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    invoke-virtual {p1, p4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;->check(Ljava/lang/String;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p1

    if-eqz p1, :cond_d5

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->joinMembershipButton:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 478
    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_d5

    return p8

    :cond_d5
    return p6

    .line 481
    :cond_d6
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;->chipBar:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p0, :cond_e6

    if-nez p9, :cond_e5

    .line 482
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object p0

    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-ne p0, p1, :cond_e5

    return p8

    :cond_e5
    return p6

    :cond_e6
    :goto_e6
    return p8
.end method
