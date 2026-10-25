.class public Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;
.super Ljava/lang/Object;
.source "YoutubeStreamInfoItemExtractor.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;


# static fields
.field private static final ACCESSIBILITY_DATA_VIEW_COUNT_REGEX:Ljava/util/regex/Pattern;

.field private static final NO_VIEWS_LOWERCASE:Ljava/lang/String; = "no views"


# instance fields
.field private cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field private isPremiere:Ljava/lang/Boolean;

.field private final timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

.field private final videoInfo:Lcom/grack/nanojson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string v0, "([\\d,]+) views$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->ACCESSIBILITY_DATA_VIEW_COUNT_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    return-void
.end method

.method private getInstantFromPremiere()Ljj$/time/Instant;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "upcomingEventData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "startTime"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_e
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/Instant;->ofEpochSecond(J)Ljj$/time/Instant;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-object v2

    :catch_17
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse date from premiere: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v4, v3, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getViewCountFromAccessibilityData()J
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "accessibilityData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no views"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_2b
    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->ACCESSIBILITY_DATA_VIEW_COUNT_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v1, v0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getViewCountFromViewCountText(Ljava/lang/String;Z)J
    .registers 5

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
    if-eqz p2, :cond_25

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2d

    :cond_25
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_2d
    return-wide v0
.end method

.method private isMembersOnly()Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;

    const-string v2, "BADGE_STYLE_TYPE_MEMBERS_ONLY"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private isPremiere()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "upcomingEventData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere:Ljava/lang/Boolean;

    :cond_12
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isPremium()Z
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    const-string v4, "metadataBadgeRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "label"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Premium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v1, 0x1

    return v1

    :cond_31
    goto :goto_c

    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$getDuration$0(Lcom/grack/nanojson/JsonObject;)Z
    .registers 2

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getDuration$1(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 3

    nop

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDuration$2(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$isMembersOnly$6(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 3

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isShortFormContent$3(Lcom/grack/nanojson/JsonObject;)Z
    .registers 2

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isShortFormContent$4(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 2

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isShortFormContent$5(Lcom/grack/nanojson/JsonObject;)Z
    .registers 4

    const-string v0, "style"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SHORTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "iconType"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shorts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0
.end method


# virtual methods
.method public getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UPCOMING:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isMembersOnly()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->MEMBERSHIP:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0

    :cond_12
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->PAID:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0

    :cond_1b
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public getDuration()J
    .registers 8

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-wide/16 v2, -0x1

    if-ne v0, v1, :cond_b

    return-wide v2

    :cond_b
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "lengthText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v4, "lengthSeconds"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v4, "thumbnailOverlays"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_6c
    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->parseDurationString(Ljava/lang/String;)I

    move-result v2
    :try_end_70
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_6c .. :try_end_70} :catch_72

    int-to-long v2, v2

    return-wide v2

    :catch_72
    move-exception v6

    goto :goto_60

    :cond_74
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere()Z

    move-result v1

    if-eqz v1, :cond_81

    return-wide v2

    :cond_81
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get duration"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_89
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->parseDurationString(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "runs"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, ""

    return-object v2

    :cond_24
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get name"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getShortDescription()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "detailedMetadataSnippets"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "snippetText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "descriptionSnippet"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 8

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "style"

    const-string v4, ""

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/grack/nanojson/JsonObject;

    if-nez v5, :cond_26

    goto :goto_13

    :cond_26
    move-object v5, v2

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    const-string v6, "metadataBadgeRenderer"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "BADGE_STYLE_TYPE_LIVE_NOW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "label"

    invoke-virtual {v5, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LIVE NOW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    goto :goto_13

    :cond_4b
    :goto_4b
    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v1

    :cond_52
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v2, "thumbnailOverlays"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/grack/nanojson/JsonObject;

    if-nez v5, :cond_6d

    goto :goto_5e

    :cond_6d
    move-object v5, v2

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    const-string v6, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v1

    :cond_89
    goto :goto_5e

    :cond_8a
    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->cachedStreamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v1
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return-object v2

    :cond_a
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getInstantFromPremiere()Ljj$/time/Instant;

    move-result-object v0

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v1}, Ljj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_27
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "publishedTimeText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v3, "videoInfo"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "runs"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "text"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5a
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_62

    :cond_61
    move-object v2, v0

    :goto_62
    return-object v2
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getThumbnailsFromInfoItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return-object v2

    :cond_a
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getInstantFromPremiere()Ljj$/time/Instant;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/Instant;)V

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    if-eqz v1, :cond_38

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    :try_start_28
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->timeAgoParser:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v1
    :try_end_2e
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object v1

    :catch_2f
    move-exception v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "Could not get upload date"

    invoke-direct {v2, v3, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_38
    return-object v2
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channelThumbnailSupportedRenderers"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channelThumbnail"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channelThumbnail.thumbnails"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v2, "ownerText"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v2, "shortBylineText"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_3f

    :cond_37
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader name"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "runs"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "navigationEndpoint"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v5, "ownerText"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v5, "shortBylineText"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_68

    :cond_60
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader url"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    :goto_68
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    :catch_11
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get url"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getViewCount()J
    .registers 8

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremium()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_81

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_81

    :cond_f
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v3, "viewCountText"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_28

    :try_start_22
    invoke-direct {p0, v0, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getViewCountFromViewCountText(Ljava/lang/String;Z)J

    move-result-wide v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_27

    return-wide v1

    :catch_27
    move-exception v3

    :cond_28
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v3

    sget-object v5, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    if-eq v3, v5, :cond_36

    :try_start_30
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getViewCountFromAccessibilityData()J

    move-result-wide v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_35

    return-wide v1

    :catch_35
    move-exception v3

    :cond_36
    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v5, "videoInfo"

    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_5f

    :try_start_41
    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v5, "runs"

    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "text"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getViewCountFromViewCountText(Ljava/lang/String;Z)J

    move-result-wide v1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5d} :catch_5e

    return-wide v1

    :catch_5e
    move-exception v3

    :cond_5f
    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v4, "shortViewCountText"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    :try_start_69
    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7e

    invoke-direct {p0, v3, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getViewCountFromViewCountText(Ljava/lang/String;Z)J

    move-result-wide v1
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7d} :catch_7f

    return-wide v1

    :cond_7e
    goto :goto_80

    :catch_7f
    move-exception v3

    :cond_80
    :goto_80
    return-wide v1

    :cond_81
    :goto_81
    return-wide v1
.end method

.method public isAd()Z
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->isPremium()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Private video]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Deleted video]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public isShortFormContent()Z
    .registers 6

    const-string v0, "thumbnailOverlays"

    const-string v1, "navigationEndpoint"

    :try_start_4
    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "commandMetadata"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "webCommandMetadata"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "webPageType"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "WEB_PAGE_TYPE_SHORTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    if-nez v3, :cond_3c

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v4, "reelWatchEndpoint"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    move v3, v1

    :cond_3c
    if-nez v3, :cond_6c

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_6d

    move v3, v0

    :cond_6c
    return v3

    :catch_6d
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not determine if this is short-form content"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isUploaderVerified()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;->videoInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "ownerBadges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isVerified(Lcom/grack/nanojson/JsonArray;)Z

    move-result v0

    return v0
.end method
