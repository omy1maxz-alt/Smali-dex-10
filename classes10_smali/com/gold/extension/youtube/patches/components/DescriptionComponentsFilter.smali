.class public final Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "DescriptionComponentsFilter.java"


# static fields
.field private static final INFOCARDS_SECTION_PATH:Ljava/lang/String; = "infocards_section.e"


# instance fields
.field private final featuredSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final featuredSectionGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final macroMarkersCarousel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final macroMarkersCarouselGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final playlistSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final playlistSectionGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final shortsHowThisWasMadeSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final subscribeButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final videoDetails:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final videoDetailsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;


# direct methods
.method public constructor <init>()V
    .registers 22

    move-object/from16 v0, p0

    .line 32
    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 22
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->macroMarkersCarouselGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 24
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v2, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->playlistSectionGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 26
    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v3, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->featuredSectionGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 33
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AI_GENERATED_VIDEO_SUMMARY_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "cell_expandable_metadata.e"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 38
    new-instance v5, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ASK_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "input_composer_button.e"

    const-string v8, "youchat_entrypoint.e"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 44
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v6, "compact_infocard.e"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v8, v7, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v8, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->featuredSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 49
    new-instance v6, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_CHANNELS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "structured_description_channel_lockup"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v9, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_LINKS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v11, "media_lockup"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v10, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_VIDEOS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v12, "structured_description_video_lockup"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v6, v9, v10}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 64
    new-instance v13, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "playlist_section.e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v7, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v13, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->playlistSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 71
    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPLORE_COURSE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "yt_outline_creator_academy"

    const-string v10, "yt_outline_experimental_graduation_cap"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v6, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPLORE_PODCAST_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "FEpodcasts_destination"

    const-string v11, "yt_outline_experimental_podcast"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v3, v6}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 84
    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CORRECTIONS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "error_corrections_section"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 89
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TRANSCRIPT_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "transcript_section"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v3, v9}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 94
    new-instance v9, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HOW_THIS_WAS_MADE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "how_this_was_made_section"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 99
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COURSE_PROGRESS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v12, "course_progress"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object v11, v10

    .line 104
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v12, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HYPE_POINTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v14, "hype_points_factoid"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v12, v14}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object v12, v11

    .line 109
    new-instance v11, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_CARDS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v15, "infocards_section.e"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 114
    new-instance v15, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v16, "subscribe_button"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v14, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v15, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->subscribeButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-object v7, v12

    .line 119
    new-instance v12, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v14, "macro_markers_carousel.e"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-direct {v12, v2, v14}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v12, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->macroMarkersCarousel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 124
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v14, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHAPTERS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v18, v4

    const-string v4, "auto-chapters"

    move-object/from16 v19, v5

    const-string v5, "description-chapters"

    move-object/from16 v20, v6

    const-string v6, "chapters_horizontal_shelf"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v14, v4}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEY_CONCEPTS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "learning_concept_macro_markers_carousel_shelf"

    const-string v14, "learning-concept"

    filled-new-array {v6, v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v2, v4}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 138
    new-instance v14, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v1, "shelf_header.e"

    const-string v2, "cell_video_attribute.e"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v3, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v14, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->shortsHowThisWasMadeSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 144
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v2, "linear_layout.e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->videoDetails:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 149
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_DETAILS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "section_header"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->videoDetailsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-object/from16 v17, v1

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    .line 154
    filled-new-array/range {v4 .. v17}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 184
    invoke-static {}, Lcom/gold/extension/youtube/shared/EngagementPanel;->isDescription()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_20

    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result p1

    if-nez p1, :cond_20

    sget-object p1, Lcom/gold/extension/youtube/patches/LayoutReloadObserverPatch;->isActionBarVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_20

    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result p1

    if-nez p1, :cond_20

    return p2

    .line 188
    :cond_20
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->subscribeButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_2b

    .line 189
    const-string p0, "infocards_section.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 192
    :cond_2b
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->featuredSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_3a

    .line 193
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->featuredSectionGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 196
    :cond_3a
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->playlistSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p3, 0x1

    if-ne p7, p1, :cond_5d

    if-eqz p9, :cond_42

    return p2

    .line 198
    :cond_42
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPLORE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5c

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->playlistSectionGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_5b

    goto :goto_5c

    :cond_5b
    return p2

    :cond_5c
    :goto_5c
    return p3

    .line 201
    :cond_5d
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->macroMarkersCarousel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_71

    if-nez p9, :cond_70

    .line 202
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->macroMarkersCarouselGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_70

    return p3

    :cond_70
    return p2

    .line 205
    :cond_71
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->shortsHowThisWasMadeSection:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_83

    .line 206
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_82

    invoke-static {}, Lcom/gold/extension/youtube/shared/EngagementPanel;->isDescription()Z

    move-result p0

    if-eqz p0, :cond_82

    return p3

    :cond_82
    return p2

    .line 209
    :cond_83
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->videoDetails:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_92

    .line 210
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;->videoDetailsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    :cond_92
    return p3
.end method
