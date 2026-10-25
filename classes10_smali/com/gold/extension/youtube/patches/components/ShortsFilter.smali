.class public final Lcom/gold/extension/youtube/patches/components/ShortsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "ShortsFilter.java"


# static fields
.field private static final COMPONENT_TYPE:Ljava/lang/String; = "ComponentType"

.field public static final HIDDEN_NAVIGATION_BAR_VERTICAL_HEIGHT:I = 0x64

.field private static final HIDE_SHORTS_NAVIGATION_BAR:Z

.field private static final REEL_WATCH_FRAGMENT_INIT_PLAYBACK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bottomBarContainerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static originalLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private static pivotBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/libraries/youtube/rendering/ui/pivotbar/PivotBar;",
            ">;"
        }
    .end annotation
.end field

.field private static final zeroLayoutParams:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private final REEL_CHANNEL_BAR_PATH:Ljava/lang/String;

.field private final REEL_METAPANEL_PATH:Ljava/lang/String;

.field private final REEL_PLAYER_OVERLAY_PATH:Ljava/lang/String;

.field private final autoDubbedLabel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final channelProfile:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final channelProfileShelfHeader:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private final joinButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final reelCarousel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final reelCarouselBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final shelfHeaderIdentifier:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final shelfHeaderPath:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final shortsActionBar:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final shortsActionButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final shortsActionButtonGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

.field private final shortsCompactFeedVideo:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final shortsCompactFeedVideoBuffer:Lcom/gold/extension/shared/ByteTrieSearch;

.field private final subscribeButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final suggestedAction:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final suggestedActionsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final useButtons:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final useButtonsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;


# direct methods
.method public static synthetic $r8$lambda$Ap8g_NwdZIviregx8dYagElAczM(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O_zHthhlZ10yvph8sVEO-YJvyQk()Ljava/lang/String;
    .registers 1

    .line 594
    const-string v0, "Hiding bottom bar container by setting layout params"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QaDtJLFslli36m7ANYntA8qAxoM(Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 3

    .line 589
    sget-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->bottomBarContainerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_28

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_28

    .line 592
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 593
    sget-object p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->zeroLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 594
    new-instance v1, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_25

    .line 596
    :cond_23
    sget-object p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->originalLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 598
    :goto_25
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :cond_28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$zJN1x-porvtHXZbbwUrhovxOK9o()Ljava/lang/String;
    .registers 1

    .line 624
    const-string v0, "Hiding pivot bar by setting to GONE"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->HIDE_SHORTS_NAVIGATION_BAR:Z

    .line 61
    const-string v0, "r_fs"

    const-string v1, "r_ts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->REEL_WATCH_FRAGMENT_INIT_PLAYBACK:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->bottomBarContainerRef:Ljava/lang/ref/WeakReference;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->pivotBarRef:Ljava/lang/ref/WeakReference;

    .line 81
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->zeroLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .registers 34

    move-object/from16 v0, p0

    .line 108
    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 46
    const-string v1, "reel_channel_bar.e"

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->REEL_CHANNEL_BAR_PATH:Ljava/lang/String;

    .line 51
    const-string v2, "reel_metapanel.e"

    iput-object v2, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->REEL_METAPANEL_PATH:Ljava/lang/String;

    .line 56
    const-string v3, "reel_player_overlay.e"

    iput-object v3, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->REEL_PLAYER_OVERLAY_PATH:Ljava/lang/String;

    .line 96
    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v4}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v4, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->reelCarouselBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 99
    new-instance v5, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v5, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->suggestedActionsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 102
    new-instance v6, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v6}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v6, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->useButtonsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 106
    new-instance v7, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    invoke-direct {v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;-><init>()V

    iput-object v7, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsActionButtonGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    .line 113
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v9, "shorts_grid"

    const-string v10, "shorts_video_cell"

    const-string v11, "shorts_shelf"

    const-string v12, "inline_shorts"

    filled-new-array {v11, v12, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 121
    new-instance v9, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v12, "shorts_pivot_item"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v9, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->channelProfile:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 126
    new-instance v12, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v13, "Shorts"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v12, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->channelProfileShelfHeader:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 133
    new-instance v11, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v12, "shelf_header.e"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v10, v13}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v11, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shelfHeaderIdentifier:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 138
    filled-new-array {v8, v9, v11}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/gold/extension/shared/patches/components/Filter;->addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 144
    new-instance v13, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v8, "video_lockup_with_attachment.e"

    const-string v9, "video_card.e"

    const-string v11, "compact_video.e"

    filled-new-array {v11, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v10, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v13, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsCompactFeedVideo:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 156
    new-instance v8, Lcom/gold/extension/shared/ByteTrieSearch;

    const-string v9, "/oar2.jpg"

    const-string v11, "/oar3.jpg"

    const-string v14, "/frame0.jpg"

    const-string v15, "/oardefault.jpg"

    const-string v10, "/oar1.jpg"

    filled-new-array {v14, v15, v10, v9, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gold/extension/shared/ByteTrieSearch;->convertStringsToBytes([Ljava/lang/String;)[[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/gold/extension/shared/ByteTrieSearch;-><init>([[B)V

    iput-object v8, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsCompactFeedVideoBuffer:Lcom/gold/extension/shared/ByteTrieSearch;

    .line 164
    new-instance v14, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v14, v9, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v14, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shelfHeaderPath:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 170
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_PAUSED_OVERLAY_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "shorts_paused_state"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 175
    new-instance v9, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_CHANNEL_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v10, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_FULL_VIDEO_LINK_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v11, "reel_multi_format_link"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 185
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_VIDEO_TITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v12, "shorts_video_title_item"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 190
    new-instance v11, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v12, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SOUND_METADATA_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v15, "reel_sound_metadata"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v12, v15}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 195
    new-instance v15, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-object/from16 v24, v1

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v17, "reel_pivot_button"

    move-object/from16 v19, v8

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v1, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 200
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_INFO_PANEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v17, "shorts_info_panel_overview"

    move-object/from16 v20, v9

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 205
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LIKE_FOUNTAIN:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v17, "like_fountain.e"

    move-object/from16 v21, v1

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v9, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v28, v8

    const-string v8, "reel_like_button.e"

    move-object/from16 v25, v10

    const-string v10, "reel_like_toggled_button.e"

    move-object/from16 v30, v11

    const-string v11, "shorts_like_button.e"

    filled-new-array {v11, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v9, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 217
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_PREVIEW_COMMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "participation_bar.e"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 224
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LIVE_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v17, "live_preview_page_vm.e"

    move-object/from16 v31, v1

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_AUTO_DUBBED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v17, "badge.e"

    move-object/from16 v22, v8

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v11, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->autoDubbedLabel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-object/from16 v26, v15

    .line 236
    new-instance v15, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_JOIN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v11, "sponsor_button"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v8, v11}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v15, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->joinButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 241
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SUBSCRIBE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v17, "subscribe_button"

    move-object/from16 v23, v1

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v8, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->subscribeButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 246
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v11, "shorts_action_bar.e"

    move-object/from16 v17, v8

    const-string v8, "reel_action_bar.e"

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-direct {v1, v11, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsActionBar:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 252
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v16, "reel_carousel.e"

    move-object/from16 v32, v1

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v8, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->reelCarousel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 257
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_AI_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v29, v8

    const-string v8, "yt_outline_info_circle"

    move-object/from16 v18, v10

    const-string v10, "yt_outline_experimental_info_circle"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v11, v8}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v8, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v10, "yt_outline_audio"

    const-string v11, "yt_outline_experimental_audio"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v12, v10}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v1, v8}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 270
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v4, "button.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-direct {v1, v11, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsActionButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 280
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v4, "floating_action_button.e"

    filled-new-array {v3, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->useButtons:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 287
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_USE_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "yt_outline_camera_"

    const-string v8, "yt_outline_experimental_camera_"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_USE_TEMPLATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "yt_outline_template_add_"

    const-string v10, "yt_outline_experimental_template_add_"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v4, v11}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v2, v3}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 300
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "suggested_action.e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-direct {v2, v11, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->suggestedAction:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-object/from16 v27, v1

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    .line 305
    filled-new-array/range {v13 .. v32}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 315
    new-instance v0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "id.reel_comment_button"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "id.reel_share_button"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_REMIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "id.reel_remix_button"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 333
    new-instance v11, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v0, "shorts-comments-panel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v9, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v12, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SHOP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_bag_"

    const-string v2, "yt_outline_experimental_bag_"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v13, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_TAGGED_PRODUCTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "PAproduct_listZ"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v14, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LOCATION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_location_point_"

    const-string v2, "yt_outline_experimental_location_point_"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v15, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SAVE_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_list_add_"

    const-string v2, "yt_outline_experimental_list_add_"

    const-string v3, "yt_outline_bookmark_"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SEARCH_SUGGESTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "yt_outline_search_"

    const-string v3, "yt_outline_experimental_search_"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SUPER_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "yt_outline_dollar_sign_heart_"

    const-string v6, "yt_outline_experimental_dollar_sign_heart_"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_UPCOMING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "yt_outline_bell_"

    const-string v7, "yt_outline_experimental_bell_"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_EFFECT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "/arcade/effects/icons/"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v6, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_GREEN_SCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "greenscreen_temp"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v7, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_NEW_POSTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "yt_outline_box_pencil"

    const-string v10, "yt_outline_experimental_box_pencil"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v8, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_HASHTAG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "yt_outline_hashtag_"

    move-object/from16 v16, v0

    const-string v0, "yt_outline_experimental_hashtag_"

    filled-new-array {v10, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    filled-new-array/range {v11 .. v23}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    return-void
.end method

.method public static allowDoubleTapToLike(Z)Z
    .registers 1

    if-eqz p0, :cond_10

    .line 645
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SHORTS_DOUBLE_TAP_TO_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static getNavigationBarHeight(I)I
    .registers 2

    .line 636
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->HIDE_SHORTS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_6

    const/16 p0, 0x64

    :cond_6
    return p0
.end method

.method public static getSoundButtonSize(I)I
    .registers 2

    .line 572
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static hidePivotBar(Ljava/lang/String;)V
    .registers 2

    .line 619
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->HIDE_SHORTS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_2d

    .line 620
    sget-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->REEL_WATCH_FRAGMENT_INIT_PLAYBACK:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 621
    sget-object p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->pivotBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/youtube/rendering/ui/pivotbar/PivotBar;

    if-nez p0, :cond_17

    goto :goto_2d

    .line 624
    :cond_17
    new-instance v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/16 v0, 0x8

    .line 625
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 627
    :cond_25
    new-instance v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private isEverySuggestedActionFilterEnabled()Z
    .registers 2

    .line 409
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->suggestedActionsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 410
    invoke-virtual {v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static setBottomBarContainer(Landroid/view/View;)V
    .registers 3

    .line 583
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->HIDE_SHORTS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 584
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->bottomBarContainerRef:Ljava/lang/ref/WeakReference;

    .line 585
    sget-object p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->originalLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez p0, :cond_27

    .line 586
    sput-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->originalLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 588
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    new-instance v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    :cond_27
    return-void
.end method

.method public static setPivotBar(Lcom/google/android/libraries/youtube/rendering/ui/pivotbar/PivotBar;)V
    .registers 2

    .line 610
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->HIDE_SHORTS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_b

    .line 611
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->pivotBarRef:Ljava/lang/ref/WeakReference;

    :cond_b
    return-void
.end method

.method private shouldHideShortsFeedItems()Z
    .registers 8

    .line 523
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_HOME:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 524
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 525
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 526
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_VIDEO_DESCRIPTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 527
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez p0, :cond_3e

    if-nez v0, :cond_3e

    if-nez v1, :cond_3e

    if-nez v2, :cond_3e

    if-nez v3, :cond_3e

    return v4

    :cond_3e
    const/4 v5, 0x1

    if-eqz p0, :cond_4a

    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    if-eqz v2, :cond_4a

    if-eqz v3, :cond_4a

    return v5

    .line 537
    :cond_4a
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result v6

    if-nez v6, :cond_89

    sget-object v6, Lcom/gold/extension/youtube/patches/LayoutReloadObserverPatch;->isActionBarVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_89

    .line 544
    :cond_5d
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isSearchBarActive()Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_88

    :cond_64
    if-nez p0, :cond_6b

    if-nez v0, :cond_6b

    if-nez v3, :cond_6b

    return v4

    .line 554
    :cond_6b
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v2

    if-nez v2, :cond_72

    goto :goto_90

    .line 559
    :cond_72
    sget-object v6, Lcom/gold/extension/youtube/patches/components/ShortsFilter$1;->$SwitchMap$app$morphe$extension$youtube$shared$NavigationBar$NavigationButton:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v5, :cond_90

    const/4 p0, 0x2

    if-eq v2, p0, :cond_88

    const/4 p0, 0x3

    if-eq v2, p0, :cond_87

    const/4 p0, 0x4

    if-eq v2, p0, :cond_86

    return v4

    :cond_86
    return v3

    :cond_87
    return v0

    :cond_88
    :goto_88
    return v1

    .line 538
    :cond_89
    :goto_89
    invoke-static {}, Lcom/gold/extension/youtube/shared/EngagementPanel;->isDescription()Z

    move-result v0

    if-eqz v0, :cond_90

    return v2

    :cond_90
    :goto_90
    return p0
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 11

    .line 428
    sget-object p2, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-ne p8, p2, :cond_1e

    .line 429
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shelfHeaderIdentifier:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_14

    if-eqz p9, :cond_d

    return v0

    .line 437
    :cond_d
    invoke-interface {p1}, Lcom/gold/extension/shared/patches/components/ContextInterface;->isHomeFeedOrRelatedVideo()Z

    move-result p1

    if-nez p1, :cond_19

    return v0

    .line 440
    :cond_14
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->channelProfile:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_19

    return p6

    .line 444
    :cond_19
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shouldHideShortsFeedItems()Z

    move-result p0

    return p0

    .line 447
    :cond_1e
    sget-object p2, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->PATH:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    if-ne p8, p2, :cond_e0

    .line 448
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->subscribeButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-eq p7, p2, :cond_c5

    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->joinButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-eq p7, p2, :cond_c5

    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->autoDubbedLabel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_30

    goto/16 :goto_c5

    .line 454
    :cond_30
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->reelCarousel:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_3f

    .line 455
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->reelCarouselBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 458
    :cond_3f
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsCompactFeedVideo:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_5b

    .line 459
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shouldHideShortsFeedItems()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 462
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p1

    sget-object p2, Lcom/gold/extension/youtube/shared/PlayerType;->INLINE_MINIMAL:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p1, p2, :cond_5a

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsCompactFeedVideoBuffer:Lcom/gold/extension/shared/ByteTrieSearch;

    .line 467
    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/ByteTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    return p6

    :cond_5a
    return v0

    .line 470
    :cond_5b
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shelfHeaderPath:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p2, :cond_78

    if-eqz p9, :cond_62

    return v0

    .line 478
    :cond_62
    invoke-interface {p1}, Lcom/gold/extension/shared/patches/components/ContextInterface;->isHomeFeedOrRelatedVideo()Z

    move-result p1

    if-nez p1, :cond_73

    .line 479
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->channelProfileShelfHeader:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    .line 482
    :cond_73
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shouldHideShortsFeedItems()Z

    move-result p0

    return p0

    .line 487
    :cond_78
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsActionBar:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_94

    .line 488
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsActionButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    invoke-virtual {p1, p4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;->check(Ljava/lang/String;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 489
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->shortsActionButtonGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    invoke-virtual {p0, p3}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    :cond_93
    return v0

    .line 494
    :cond_94
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->useButtons:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_ae

    .line 495
    const-string p1, "|button.e"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ad

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->useButtonsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_ad

    return p6

    :cond_ad
    return v0

    .line 498
    :cond_ae
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->suggestedAction:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_c4

    .line 502
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->isEverySuggestedActionFilterEnabled()Z

    move-result p1

    if-eqz p1, :cond_b9

    return p6

    .line 506
    :cond_b9
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;->suggestedActionsBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    :cond_c4
    return p6

    .line 450
    :cond_c5
    :goto_c5
    const-string p0, "reel_channel_bar.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_df

    const-string p0, "reel_metapanel.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_df

    const-string p0, "reel_player_overlay.e"

    .line 451
    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_de

    goto :goto_df

    :cond_de
    return v0

    :cond_df
    :goto_df
    return p6

    :cond_e0
    return v0
.end method
