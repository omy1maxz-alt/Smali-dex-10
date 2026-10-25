.class public Lcom/gold/extension/youtube/patches/components/CommentsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "CommentsFilter.java"


# static fields
.field private static final CHIP_BAR_PATH_PREFIX:Ljava/lang/String; = "chip_bar.e"

.field private static final COMMENT_COMPOSER_PATH:Ljava/lang/String; = "comment_composer.e"

.field private static final VIDEO_LOCKUP_WITH_ATTACHMENT_PATH:Ljava/lang/String; = "video_lockup_with_attachment.e"

.field private static final VIDEO_METADATA_CAROUSEL_PATH:Ljava/lang/String; = "video_metadata_carousel.e"

.field private static final commentsCarouselFilterStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comments:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final emojiAndTimestampButtons:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final previewCommentDotsSelector:Lcom/gold/extension/shared/patches/components/StringFilterGroup;


# direct methods
.method public static synthetic $r8$lambda$PYiw4bh4Xn6Pg-Re_128A0Mqvv8(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "comments title: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hAvCpgpUQVwHLJEfvJKl69BpqwQ()Ljava/lang/String;
    .registers 1

    .line 214
    const-string v0, "Failed to parse newElement"

    return-object v0
.end method

.method public static synthetic $r8$lambda$zW_ajl3aN2n4bNB3CKkHdHCTJ4w()Ljava/lang/String;
    .registers 1

    .line 249
    const-string v0, "Failed to sanitize comment category bar"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 42
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CAROUSEL_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->getFilterStrings(Lcom/gold/extension/shared/settings/StringSetting;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->commentsCarouselFilterStrings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .line 48
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 49
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_AI_CHAT_SUMMARY:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "live_chat_summary_banner.e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CHANNEL_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "channel_guidelines_entry_banner"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_BY_MEMBERS_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "sponsorships_comments_header.e"

    const-string v5, "sponsorships_comments_footer.e"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 65
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v4, "video_metadata_carousel"

    const-string v5, "_comments"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->comments:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 71
    new-instance v5, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_COMMUNITY_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "community_guidelines"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 76
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_PROMPTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "timed_comments_welcome.e"

    const-string v8, "timed_comments_end.e"

    const-string v9, "comment_filter_context.e"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 83
    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CREATE_A_SHORT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "composer_short_creation_button.e"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 88
    new-instance v7, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_EMOJI_AND_TIMESTAMP_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v7, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->emojiAndTimestampButtons:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 93
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_PREVIEW_COMMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "comments_entry_point_teaser"

    const-string v11, "comments_entry_point_simplebox"

    const-string v12, "|carousel_item"

    filled-new-array {v12, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    move-object v10, v9

    .line 100
    new-instance v9, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v11, "video_metadata_carousel.e"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v9, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->previewCommentDotsSelector:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 105
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v11, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v12, "super_thanks_button.e"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 110
    filled-new-array/range {v0 .. v10}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method

.method public static hideCommentsInfoButton(Landroid/view/View;)V
    .registers 3

    .line 225
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_INFO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 226
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public static hideLiveChatDonatorsBar(Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_1b

    .line 257
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_LIVE_CHAT_DONATORS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1b

    .line 261
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/youtube/patches/components/CommentsFilter$1;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/components/CommentsFilter$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static hideLiveChatEmojiButton(Landroid/view/View;)V
    .registers 3

    .line 277
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_EMOJI_AND_TIMESTAMP_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p0, :cond_1e

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 280
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    const/4 v0, 0x4

    .line 284
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    return-void
.end method

.method public static hideLiveChatThanksButton(Landroid/view/View;)V
    .registers 3

    .line 292
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p0, :cond_21

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    .line 295
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 296
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    const/16 v0, 0x8

    .line 299
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    return-void
.end method

.method public static onCommentsLoaded([B)[B
    .registers 14

    .line 158
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CAROUSEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_fe

    sget-object v0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->commentsCarouselFilterStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 160
    :try_start_14
    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    .line 161
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->getProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->getIdentifierProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 162
    const-string v2, "video_metadata_carousel.e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 163
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->getType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    .line 164
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;->getComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    .line 165
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;->getModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    .line 166
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->getVideoMetadataCarouselModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;

    .line 167
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;->getData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;

    .line 168
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;->getCarouselTitleDatasList()Ljava/util/List;

    move-result-object v6

    .line 172
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    :goto_71
    const/4 v10, -0x1

    if-le v7, v10, :cond_ad

    .line 173
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    .line 175
    invoke-virtual {v10}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 176
    new-instance v11, Lcom/gold/extension/youtube/patches/components/CommentsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v11, v10}, Lcom/gold/extension/youtube/patches/components/CommentsFilter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz v10, :cond_aa

    .line 179
    sget-object v11, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->commentsCarouselFilterStrings:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8e
    :goto_8e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_aa

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 180
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 181
    invoke-virtual {v5, v7}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;->removeCarouselItemDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;

    .line 182
    invoke-virtual {v5, v7}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;->removeCarouselTitleDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;

    move v9, v8

    goto :goto_8e

    :catch_a8
    move-exception v0

    goto :goto_f6

    :cond_aa
    add-int/lit8 v7, v7, -0x1

    goto :goto_71

    :cond_ad
    if-eqz v9, :cond_fe

    .line 190
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 191
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;->clearData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;

    .line 192
    invoke-virtual {v4, v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;->setData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;

    .line 194
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    .line 195
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->clearVideoMetadataCarouselModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    .line 196
    invoke-virtual {v3, v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->setVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    .line 198
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    .line 199
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;->clearModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    .line 200
    invoke-virtual {v2, v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;->setModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    .line 202
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 203
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;->clearComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    .line 204
    invoke-virtual {v1, v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;->setComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    .line 206
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 207
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->clearType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    .line 208
    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->setType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    .line 210
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_f5} :catch_a8

    return-object p0

    .line 214
    :goto_f6
    new-instance v1, Lcom/gold/extension/youtube/patches/components/CommentsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/components/CommentsFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_fe
    return-object p0
.end method

.method public static sanitizeCommentsCategoryBar(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
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

    .line 238
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SANITIZE_COMMENTS_CATEGORY_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "chip_bar.e"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 241
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_2e

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 245
    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :cond_2e
    return-void

    :catch_2f
    move-exception p0

    .line 249
    new-instance p1, Lcom/gold/extension/youtube/patches/components/CommentsFilter$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/components/CommentsFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 136
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->previewCommentDotsSelector:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p2, 0x1

    if-ne p7, p1, :cond_18

    .line 137
    const-string p0, "carousel_header"

    invoke-virtual {p4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "|ContainerType|ContainerType|ContainerType|"

    .line 139
    invoke-virtual {p4, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    return p2

    :cond_16
    const/4 p0, 0x0

    return p0

    .line 142
    :cond_18
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->comments:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_3a

    .line 143
    const-string p0, "video_lockup_with_attachment.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 144
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_SECTION_IN_HOME_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 146
    :cond_2f
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 147
    :cond_3a
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->emojiAndTimestampButtons:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p0, :cond_45

    .line 148
    const-string p0, "comment_composer.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_45
    return p2
.end method
