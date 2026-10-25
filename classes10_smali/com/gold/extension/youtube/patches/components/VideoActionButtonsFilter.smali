.class public final Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "VideoActionButtonsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;
    }
.end annotation


# static fields
.field private static final COMPACTIFY_VIDEO_ACTION_BAR_PREFIX:Ljava/lang/String; = "compactify_video_action_bar.e"

.field private static final COMPACT_CHANNEL_BAR_PREFIX:Ljava/lang/String; = "compact_channel_bar.e"

.field private static final ELEMENT_BUTTON_ID:Ljava/lang/String; = "id.elements.button"

.field private static final HIDE_ACTION_BUTTON:Z

.field private static final MORE_BUTTON_PATH:Ljava/lang/String; = "overflow_menu_button.e"

.field private static final VIDEO_ACTION_BAR_PREFIX:Ljava/lang/String; = "video_action_bar.e"

.field private static final actionButtonLookup:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "itself"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final accessibilityGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

.field private final actionBarGroup:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final bufferGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final likeSubscribeGlow:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final moreButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;


# direct methods
.method public static synthetic $r8$lambda$JIFLYzRo4D9nAy5fZmAYvW1afEc(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown model: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", videoId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jr9K7G7K7G8E9EDOcvmLwnom5i4()Ljava/lang/String;
    .registers 1

    .line 407
    const-string v0, "Failed to parse SingleColumnWatchNextResults"

    return-object v0
.end method

.method public static synthetic $r8$lambda$NRTT1ITPgWtoP5HFgw7nbmiC2Do(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown buttonViewModel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", videoId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dKsEjYTB9WL79MUo2oFkSBwVPvA(II)Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The sizes of the lists do not match, actionButtonSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", treeNodeResultListSize: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ipwXo7SHXoNkrYiFyyPoDG44krM(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown iconName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", videoId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pnyY0gHONv2J3pSZH2EwmWblblk(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 4

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New video id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", action buttons: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 127
    invoke-static {}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->values()[Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 128
    iget-boolean v4, v4, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->shouldHide:Z

    if-eqz v4, :cond_11

    const/4 v2, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 133
    :cond_14
    :goto_14
    sput-boolean v2, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->HIDE_ACTION_BUTTON:Z

    const/16 v0, 0xa

    .line 141
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionButtonLookup:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 156
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 153
    new-instance v0, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->accessibilityGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    .line 154
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v1, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->bufferGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 157
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "video_action_bar.e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionBarGroup:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 161
    filled-new-array {v2}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/patches/components/Filter;->addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 164
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_LIKE_SUBSCRIBE_GLOW:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "animated_button_border.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->likeSubscribeGlow:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 168
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "overflow_menu_button.e"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->moreButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 173
    filled-new-array {v2, v3}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 178
    new-instance p0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LIKE_DISLIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "id.video.dislike"

    const-string v4, "id.video.like"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "id.video.share"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SAVE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "id.video.add_to.button"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {p0, v2, v3}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    .line 193
    new-instance p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ASK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "PAyouchat"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HYPE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "yt_outline_experimental_hype"

    const-string v4, "yt_outline_star_shooting"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    return-void
.end method

.method public static onLazilyConvertedElementLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 239
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->HIDE_ACTION_BUTTON:Z

    if-nez v0, :cond_5

    goto :goto_13

    .line 243
    :cond_5
    const-string v0, "compactify_video_action_bar.e"

    const-string v1, "video_action_bar.e"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/shared/Utils;->startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    :goto_13
    return-void

    .line 246
    :cond_14
    sget-object p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionButtonLookup:Ljava/util/Map;

    monitor-enter p0

    .line 248
    :try_start_17
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_27

    .line 251
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    goto :goto_54

    .line 256
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 257
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3b

    .line 260
    new-instance p1, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;

    invoke-direct {p1, v1, v2}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 261
    monitor-exit p0

    return-void

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    :goto_3d
    const/4 v3, -0x1

    if-le v1, v3, :cond_52

    .line 266
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    .line 267
    iget-boolean v3, v3, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->shouldHide:Z

    if-eqz v3, :cond_4f

    if-ge v1, v2, :cond_4f

    .line 268
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    .line 271
    :cond_52
    monitor-exit p0

    return-void

    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_17 .. :try_end_55} :catchall_25

    throw p1
.end method

.method public static onSingleColumnWatchNextResultsLoaded(Lcom/google/protobuf/MessageLite;)V
    .registers 14

    .line 283
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->HIDE_ACTION_BUTTON:Z

    if-nez v0, :cond_6

    goto/16 :goto_1b7

    .line 286
    :cond_6
    sget-object v0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionButtonLookup:Ljava/util/Map;

    monitor-enter v0

    .line 288
    :try_start_9
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    move-result-object p0

    .line 289
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->getPrimaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->getSecondaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->getSecondaryContentsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    .line 295
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->hasSlimVideoMetadataSectionRenderer()Z

    move-result v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_38
    .catchall {:try_start_9 .. :try_end_32} :catchall_35

    if-eqz v3, :cond_21

    goto :goto_3c

    :catchall_35
    move-exception p0

    goto/16 :goto_1b8

    :catch_38
    move-exception p0

    goto/16 :goto_1ae

    :cond_3b
    move-object v1, v2

    :goto_3c
    if-nez v1, :cond_40

    .line 300
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_35

    return-void

    .line 302
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->getSlimVideoMetadataSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 308
    sget-object v3, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionButtonLookup:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4e} :catch_38
    .catchall {:try_start_40 .. :try_end_4e} :catchall_35

    if-eqz v3, :cond_52

    .line 309
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_35

    return-void

    .line 314
    :cond_52
    :try_start_52
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getTertiaryContentsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    .line 315
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->getElementRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->getNewElement()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->getProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object v4

    .line 318
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->getIdentifierProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;

    move-result-object v4

    .line 319
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 320
    const-string v5, "compactify_video_action_bar.e"

    const-string v6, "video_action_bar.e"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gold/extension/shared/Utils;->startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_86} :catch_38
    .catchall {:try_start_52 .. :try_end_86} :catchall_35

    if-eqz v4, :cond_5a

    goto :goto_8a

    :cond_89
    move-object v3, v2

    :goto_8a
    if-nez v3, :cond_8e

    .line 325
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_35

    return-void

    .line 327
    :cond_8e
    :try_start_8e
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->getType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->getComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->getModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->hasYoutubeModel()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 333
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getYoutubeModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->getViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->getCompactifyVideoActionBarViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->getActionButtonsList()Ljava/util/List;

    move-result-object v2

    goto :goto_cc

    .line 338
    :cond_b1
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->hasVideoActionBarModel()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 339
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getVideoActionBarModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->getVideoActionBarData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->getActionButtonsList()Ljava/util/List;

    move-result-object v2

    goto :goto_cc

    .line 345
    :cond_c4
    new-instance v3, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :goto_cc
    if-eqz v2, :cond_1ac

    .line 347
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d6

    goto/16 :goto_1ac

    .line 349
    :cond_d6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v4, v2

    :goto_e5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    .line 355
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->UNKNOWN:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    .line 356
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;->getPrimaryButtonViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;

    move-result-object v5

    .line 357
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasSecondaryButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_13e

    .line 358
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->getSecondaryButtonViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    move-result-object v5

    .line 359
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->getIconName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_197

    .line 361
    invoke-static {}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->values()[Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_10d
    if-ge v9, v8, :cond_131

    aget-object v10, v7, v9

    .line 362
    sget-object v11, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->UNKNOWN:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    if-ne v6, v11, :cond_12e

    .line 363
    iget-object v11, v10, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->iconNames:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 364
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11b

    move-object v6, v10

    :cond_12e
    add-int/lit8 v9, v9, 0x1

    goto :goto_10d

    .line 373
    :cond_131
    sget-object v7, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->UNKNOWN:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    if-ne v6, v7, :cond_197

    .line 374
    new-instance v7, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, v1}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_197

    .line 377
    :cond_13e
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasAccountLinkButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_147

    .line 378
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->CONNECT:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 379
    :cond_147
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasAddToPlaylistButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_150

    .line 380
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->SAVE:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 381
    :cond_150
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasClipButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_159

    .line 382
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->CLIP:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 383
    :cond_159
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasCompactChannelBarViewModel()Z

    move-result v7

    if-eqz v7, :cond_162

    .line 384
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->CHANNEL_PROFILE:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 385
    :cond_162
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasDislikeButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_16b

    .line 386
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->DISLIKE:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 387
    :cond_16b
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasDownloadButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_174

    .line 388
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->DOWNLOAD:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 389
    :cond_174
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasLikeButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 390
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->LIKE:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 391
    :cond_17d
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasOverflowMenuButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_186

    .line 392
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->MORE:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 393
    :cond_186
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;->hasSegmentedLikeDislikeButtonViewModel()Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 394
    sget-object v6, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;->LIKE_DISLIKE:Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$ActionButton;

    goto :goto_197

    .line 397
    :cond_18f
    new-instance v7, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5, v1}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryButtonViewModel;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 399
    :cond_197
    :goto_197
    invoke-interface {v3, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e5

    .line 404
    :cond_19e
    new-instance p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda3;

    invoke-direct {p0, v1, v3}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 405
    sget-object p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionButtonLookup:Ljava/util/Map;

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_1ab} :catch_38
    .catchall {:try_start_8e .. :try_end_1ab} :catchall_35

    goto :goto_1b6

    .line 347
    :cond_1ac
    :goto_1ac
    :try_start_1ac
    monitor-exit v0

    return-void

    .line 407
    :goto_1ae
    new-instance v1, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 409
    :goto_1b6
    monitor-exit v0

    :goto_1b7
    return-void

    :goto_1b8
    monitor-exit v0
    :try_end_1b9
    .catchall {:try_start_1ac .. :try_end_1b9} :catchall_35

    throw p0
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 216
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->likeSubscribeGlow:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_13

    .line 217
    const-string p0, "compactify_video_action_bar.e"

    const-string p1, "video_action_bar.e"

    const-string p2, "compact_channel_bar.e"

    filled-new-array {p2, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/gold/extension/shared/Utils;->startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 218
    :cond_13
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->moreButton:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p2, 0x1

    if-ne p7, p1, :cond_19

    return p2

    .line 220
    :cond_19
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->actionBarGroup:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_55

    .line 221
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ACTION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->accessibilityGroupList:Lcom/gold/extension/shared/patches/components/StringFilterGroupList;

    invoke-virtual {p1, p3}, Lcom/gold/extension/shared/patches/components/StringFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_55

    :cond_36
    if-eqz p3, :cond_53

    .line 223
    const-string p1, "id.elements.button"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_53

    const-string p1, "overflow_menu_button.e"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 224
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->bufferGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    :cond_53
    const/4 p0, 0x0

    return p0

    :cond_55
    :goto_55
    return p2
.end method
