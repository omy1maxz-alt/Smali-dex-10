.class public final Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "QuickActionButtonsFilter.java"


# static fields
.field private static final QUICK_ACTIONS_PATH:Ljava/lang/String; = "quick_actions.e"


# instance fields
.field private final bufferButtonsGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final buttonFilterPath:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final exceptions:Lcom/gold/extension/shared/StringTrieSearch;

.field private final quickActions:Lcom/gold/extension/shared/patches/components/StringFilterGroup;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 31
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 26
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->exceptions:Lcom/gold/extension/shared/StringTrieSearch;

    .line 29
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v1, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->bufferButtonsGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 32
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "quick_actions.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->quickActions:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 37
    filled-new-array {v2}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/patches/components/Filter;->addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 39
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v2, "|ContainerType|button.e"

    const-string v3, "|fullscreen_video_action_button.e"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v8, v3, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v8, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->buttonFilterPath:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 45
    const-string v2, "|like_button"

    const-string v3, "|dislike_button"

    const-string v4, "|save_to_playlist_button"

    const-string v5, "|overflow_menu_button"

    const-string v6, "|fullscreen_related_videos"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/gold/extension/shared/StringTrieSearch;->addPatterns([Ljava/lang/Object;)V

    move-object v0, v3

    .line 53
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_LIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v7, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_DISLIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v7, v0}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object v0, v5

    new-instance v5, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_SAVE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v7, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object v2, v6

    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v7, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_MORE_VIDEOS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array/range {v3 .. v8}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 77
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_ASK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v0, "yt_fill_experimental_spark"

    const-string v3, "yt_fill_spark"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v0, "yt_outline_experimental_text_bubble"

    const-string v4, "yt_outline_message_bubble"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_LIVE_CHAT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v0, "yt_outline_experimental_bubble_stack"

    const-string v5, "yt_outline_message_bubble_overlap"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v5, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_MIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v0, "yt_outline_experimental_mix"

    const-string v6, "yt_outline_youtube_mix"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v6, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_PLAYLIST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v0, "yt_outline_experimental_playlist"

    const-string v7, "yt_outline_list_play_arrow"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v7, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v0, "yt_outline_experimental_share"

    const-string v8, "yt_outline_share"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array/range {v2 .. v7}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 122
    const-string p1, "quick_actions.e"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_a

    return p2

    .line 126
    :cond_a
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->quickActions:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p3, 0x1

    if-ne p7, p1, :cond_10

    return p3

    .line 130
    :cond_10
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->buttonFilterPath:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_28

    .line 131
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->exceptions:Lcom/gold/extension/shared/StringTrieSearch;

    invoke-virtual {p1, p4}, Lcom/gold/extension/shared/StringTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return p2

    .line 134
    :cond_1d
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;->bufferButtonsGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    :cond_28
    return p3
.end method
