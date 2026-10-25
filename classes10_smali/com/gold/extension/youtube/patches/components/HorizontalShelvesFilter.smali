.class public final Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "HorizontalShelvesFilter.java"


# instance fields
.field private final descriptionBuffers:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final generalBuffers:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 30
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 27
    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->descriptionBuffers:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 28
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v1, p0, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->generalBuffers:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 31
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "horizontal_shelf.e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 32
    filled-new-array {v2}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 34
    new-instance p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ATTRIBUTES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "cell_video_attribute"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_PLACES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "yt_fill_experimental_star"

    const-string v5, "yt_fill_star"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GAMING_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "yt_outline_experimental_gaming"

    const-string v6, "yt_outline_gaming"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MUSIC_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "yt_outline_experimental_audio"

    const-string v7, "yt_outline_audio"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v5, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUIZZES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "post_base_wrapper_slim"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {p0, v2, v3, v4, v5}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 61
    new-instance p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CREATOR_STORE_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "shopping_item_card_list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYABLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "FEmini_app_destination"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TICKET_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "ticket_item.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {p0, v0, v2}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    return-void
.end method

.method private hideShelves(Lcom/gold/extension/shared/patches/components/ContextInterface;)Z
    .registers 4

    .line 85
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HORIZONTAL_SHELVES:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->isPlayerOrDescription()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_32

    .line 88
    :cond_14
    invoke-interface {p1}, Lcom/gold/extension/shared/patches/components/ContextInterface;->isHomeFeedOrRelatedVideo()Z

    move-result p0

    if-nez p0, :cond_30

    .line 89
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isSearchBarActive()Z

    move-result p0

    if-nez p0, :cond_30

    .line 90
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isBackButtonVisible()Z

    move-result p0

    if-nez p0, :cond_30

    .line 91
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object p0

    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-eq p0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v1

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    return v1
.end method

.method private isPlayerOrDescription()Z
    .registers 1

    .line 78
    invoke-static {}, Lcom/gold/extension/youtube/shared/EngagementPanel;->isDescription()Z

    move-result p0

    if-nez p0, :cond_21

    .line 79
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result p0

    if-nez p0, :cond_21

    sget-object p0, Lcom/gold/extension/youtube/patches/LayoutReloadObserverPatch;->isActionBarVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_21

    .line 81
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    if-eqz p9, :cond_4

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_4
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->generalBuffers:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p2, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p0, 0x1

    return p0

    .line 110
    :cond_12
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->descriptionBuffers:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p2, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 111
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->isPlayerOrDescription()Z

    move-result p0

    return p0

    .line 113
    :cond_23
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;->hideShelves(Lcom/gold/extension/shared/patches/components/ContextInterface;)Z

    move-result p0

    return p0
.end method
