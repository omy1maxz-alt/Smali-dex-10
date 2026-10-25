.class public Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;
.super Ljava/lang/Object;
.source "YoutubeStreamInfoItemLockupExtractor.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;


# static fields
.field private static final NO_VIEWS_LOWERCASE:Ljava/lang/String; = "no views"

.field private static final PREMIERES_DATE_FORMATTER:Ljj$/time/format/DateTimeFormatter;

.field private static final PREMIERES_LIVES_TEXT:Ljava/lang/String; = "Scheduled for "

.field private static final PREMIERES_VIDEOS_TEXT:Ljava/lang/String; = "Premieres "


# instance fields
.field private cachedChannelImageViewModel:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

.field private cachedDateText:Ljava/lang/String;

.field private final cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

.field private cachedName:Ljava/lang/String;

.field private cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field private final lockupViewModel:Lcom/grack/nanojson/JsonObject;

.field private final timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string v0, "dd/MM/yyyy, HH:mm"

    invoke-static {v0}, Ljj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->PREMIERES_DATE_FORMATTER:Ljj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "lockupMetadataViewModel"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "contentMetadataViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRows"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    return-void
.end method

.method private channelImageViewModel()Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedChannelImageViewModel:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->determineChannelImageViewModel()Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedChannelImageViewModel:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    :cond_a
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedChannelImageViewModel:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    return-object v0
.end method

.method private determineChannelImageViewModel()Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "lockupMetadataViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "decoratedAvatarViewModel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;

    invoke-direct {v2, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v2

    :cond_23
    const-string v3, "avatarStackViewModel"

    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_31

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;

    invoke-direct {v3, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v3

    :cond_31
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Failed to determine channel image view model"

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private determineStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentImage.thumbnailViewModel.overlays"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v1

    :cond_2c
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v1

    :cond_50
    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v1
.end method

.method private getDateFromPremiere(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "Premieres "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Scheduled for "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateText()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Ljava/lang/String;

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getMetadataPartsFromMetadataRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    nop

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getTextContentFromMetadataPart(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Ljava/lang/String;

    return-object v2

    :cond_34
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get date text: no metadata part in the metadata parts array"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3c
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get date text: no metadata part from metadata rows"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Ljava/lang/String;

    return-object v0
.end method

.method private getMetadataPartsFromMetadataRows()Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "metadataParts"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    return-object v0
.end method

.method private getTextContentFromMetadataPart(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getViewCountFromViewCountText(Ljava/lang/String;)J
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no views"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1e
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private isChannelsMembersOnlyOrFirst()Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;

    const-string v2, "BADGE_MEMBERS_ONLY"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private isLive()Z
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isPremiere()Z
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Premieres "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "Scheduled for "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method static synthetic lambda$determineStreamType$0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 3

    nop

    const-string v0, "thumbnailOverlayBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnailBadges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineStreamType$1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 2

    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineStreamType$2(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 3

    nop

    const-string v0, "clientResource"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "imageName"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineStreamType$3(Lcom/grack/nanojson/JsonObject;)Z
    .registers 4

    const-string v0, "badgeStyle"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "sources"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;

    const-string v2, "LIVE"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$determineStreamType$4(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 3

    nop

    const-string v0, "thumbnailBottomOverlayViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineStreamType$5(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 2

    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineStreamType$6(Lcom/grack/nanojson/JsonObject;)Z
    .registers 3

    nop

    const-string v0, "badgeStyle"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getDuration$7(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 3

    nop

    const-string v0, "thumbnailBottomOverlayViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDuration$8(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 3

    nop

    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isChannelsMembersOnlyOrFirst$10(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 3

    const-string v0, "badgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "badgeStyle"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isChannelsMembersOnlyOrFirst$9(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 2

    const-string v0, "badges"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private resolveUploaderUrlFromRelativeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, p1

    :goto_13
    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isChannelsMembersOnlyOrFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->MEMBERSHIP:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0

    :cond_12
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UPCOMING:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0

    :cond_1b
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public getDuration()J
    .registers 8

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_6e

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6e

    :cond_f
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v3, "contentImage.thumbnailViewModel.overlays"

    invoke-static {v0, v3}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    return-wide v1

    :cond_3e
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_43

    const-string v6, ".*\\d.*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5a

    goto :goto_43

    :cond_5a
    :try_start_5a
    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->parseDurationString(Ljava/lang/String;)I

    move-result v1
    :try_end_5e
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_5a .. :try_end_5e} :catch_60

    int-to-long v1, v1

    return-wide v1

    :catch_60
    move-exception v6

    move-object v3, v6

    goto :goto_43

    :cond_63
    if-nez v3, :cond_66

    return-wide v1

    :cond_66
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get duration"

    invoke-direct {v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6e
    :goto_6e
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedName:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadata.lockupMetadataViewModel.title.content"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedName:Ljava/lang/String;

    return-object v0

    :cond_18
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get name"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->determineStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    :cond_a
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateFromPremiere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_17
    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentImage.thumbnailViewModel.image.sources"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateFromPremiere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1b
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->PREMIERES_DATE_FORMATTER:Ljj$/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalDateTime;

    move-result-object v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    sget-object v4, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-virtual {v2, v4}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/Instant;Z)V
    :try_end_31
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_1b .. :try_end_31} :catch_32

    return-object v3

    :catch_32
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not parse premiere upload date"

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3b
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v1

    return-object v1
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 3

    nop

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->channelImageViewModel()Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->forAvatarExtraction()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatarViewModel.image.sources"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getMetadataPartsFromMetadataRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getTextContentFromMetadataPart(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    return-object v1

    :cond_20
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get uploader name"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader name: no metadata row"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .registers 8

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->channelImageViewModel()Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rendererContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commandContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "onTap"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    nop

    const-string v1, "browseEndpoint"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    nop

    const-string v2, "browseId"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_54

    const-string v3, "UC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_54
    const-string v3, "canonicalBaseUrl"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-direct {p0, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->resolveUploaderUrlFromRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_65
    const-string v4, "commandMetadata"

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "webCommandMetadata"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->resolveUploaderUrlFromRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_82
    new-instance v5, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "Could not get uploader url"

    invoke-direct {v5, v6}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v2, "rendererContext.commandContext.onTap.innertubeCommand.watchEndpoint.videoId"

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_17
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get url"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getViewCount()J
    .registers 7

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isChannelsMembersOnlyOrFirst()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getMetadataPartsFromMetadataRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2a

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isChannelOrCoursePlaylistLockupItem()Z

    move-result v1

    if-eqz v1, :cond_22

    return-wide v4

    :cond_22
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get view count: no metadata part from metadata rows"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v3

    if-eqz v3, :cond_31

    return-wide v1

    :cond_31
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_45

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isChannelOrCoursePlaylistLockupItem()Z

    move-result v1

    if-nez v1, :cond_45

    return-wide v4

    :cond_45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    nop

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getTextContentFromMetadataPart(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getViewCountFromViewCountText(Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    :cond_6b
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not get view count"

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_73
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get view count: no metadata part in the metadata parts array"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isAd()Z
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Private video]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "[Deleted video]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method protected isChannelOrCoursePlaylistLockupItem()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUploaderVerified()Z
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getMetadataPartsFromMetadataRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "attachmentRuns"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hasArtistOrVerifiedIconBadgeAttachment(Lcom/grack/nanojson/JsonArray;)Z

    move-result v1

    return v1

    :cond_26
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader verified status: no metadata row"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
