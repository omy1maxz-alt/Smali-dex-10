.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper;
.super Ljava/lang/Object;
.source "YoutubeMetaInfoHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClarificationRenderer(Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/MetaInfo;
    .registers 9

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MetaInfo;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/MetaInfo;-><init>()V

    nop

    const-string v1, "contentTitle"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    nop

    const-string v2, "text"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_c5

    if-eqz v3, :cond_c5

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->setTitle(Ljava/lang/String;)V

    new-instance v4, Lcom/gold/youtube/om7753/extractor/stream/Description;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/gold/youtube/om7753/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->setContent(Lcom/gold/youtube/om7753/extractor/stream/Description;)V

    const-string v4, "actionButton"

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "buttonRenderer"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    :try_start_3d
    const-string v5, "command"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/net/URL;

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_59
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_59} :catch_77
    .catch Ljava/net/MalformedURLException; {:try_start_3d .. :try_end_59} :catch_75

    nop

    nop

    invoke-virtual {v4, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-virtual {v0, v2}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    goto :goto_80

    :cond_6d
    new-instance v5, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "Could not get metadata info link text."

    invoke-direct {v5, v6}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_75
    move-exception v2

    goto :goto_78

    :catch_77
    move-exception v2

    :goto_78
    new-instance v5, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "Could not get metadata info URL"

    invoke-direct {v5, v6, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_80
    :goto_80
    const-string v2, "secondaryEndpoint"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c4

    const-string v4, "secondarySource"

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    nop

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c4

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isGoogleURL(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c4

    :try_start_a1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V

    nop

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b6

    move-object v5, v2

    goto :goto_b7

    :cond_b6
    move-object v5, v4

    :goto_b7
    invoke-virtual {v0, v5}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/net/MalformedURLException; {:try_start_a1 .. :try_end_ba} :catch_bb

    goto :goto_c4

    :catch_bb
    move-exception v4

    new-instance v5, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "Could not get metadata info secondary URL"

    invoke-direct {v5, v6, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_c4
    :goto_c4
    return-object v0

    :cond_c5
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not extract clarification renderer content"

    invoke-direct {v2, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getEmergencyOneboxRenderer(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V
    .registers 14

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonObject;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    new-instance v3, Lcom/gold/youtube/om7753/extractor/MetaInfo;

    invoke-direct {v3}, Lcom/gold/youtube/om7753/extractor/MetaInfo;-><init>()V

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "actionText"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "\n"

    if-eqz v6, :cond_6f

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "action"

    invoke-static {v5, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a5

    :cond_6f
    const-string v6, "contacts"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_81
    invoke-virtual {v6}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_9e

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v10

    const-string v11, "contacts.actionText"

    invoke-static {v10, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_81

    :cond_9e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a5

    :cond_a3
    const-string v5, ""

    :goto_a5
    const-string v6, "detailsText"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "details"

    invoke-static {v6, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "navigationText"

    invoke-virtual {v2, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "urlText"

    invoke-static {v7, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->setTitle(Ljava/lang/String;)V

    new-instance v8, Lcom/gold/youtube/om7753/extractor/stream/Description;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Lcom/gold/youtube/om7753/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v8}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->setContent(Lcom/gold/youtube/om7753/extractor/stream/Description;)V

    invoke-virtual {v3, v7}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    const-string v8, "navigationEndpoint"

    invoke-virtual {v2, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    invoke-static {v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_104

    :try_start_e9
    new-instance v9, Ljava/net/URL;

    invoke-static {v8}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_f5
    .catch Ljava/net/MalformedURLException; {:try_start_e9 .. :try_end_f5} :catch_fb

    nop

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_2e

    :catch_fb
    move-exception v1

    new-instance v9, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v10, "Could not parse emergency renderer url"

    invoke-direct {v9, v10, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_104
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v9, "Could not extract emergency renderer url"

    invoke-direct {v1, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10c
    return-void

    :cond_10d
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not extract any meta info from emergency renderer"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInfoPanelContent(Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/MetaInfo;
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MetaInfo;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/MetaInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paragraphs"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "<br>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    move-object v4, v3

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_34
    new-instance v2, Lcom/gold/youtube/om7753/extractor/stream/Description;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->setContent(Lcom/gold/youtube/om7753/extractor/stream/Description;)V

    const-string v2, "sourceEndpoint"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    nop

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    :try_start_52
    new-instance v3, Ljava/net/URL;

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_64
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_64} :catch_96
    .catch Ljava/net/MalformedURLException; {:try_start_52 .. :try_end_64} :catch_94

    nop

    const-string v3, "inlineSource"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    nop

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_82

    :cond_77
    nop

    const-string v3, "disclaimer"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    :goto_82
    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-virtual {v0, v3}, Lcom/gold/youtube/om7753/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    goto :goto_9f

    :cond_8c
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "Could not get metadata info link text."

    invoke-direct {v4, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_94
    move-exception v3

    goto :goto_97

    :catch_96
    move-exception v3

    :goto_97
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "Could not get metadata info URL"

    invoke-direct {v4, v5, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_9f
    :goto_9f
    return-object v0
.end method

.method public static getMetaInfo(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    const-string v4, "itemSectionRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "contents"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/grack/nanojson/JsonObject;

    const-string v7, "infoPanelContentRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    nop

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    invoke-static {v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper;->getInfoPanelContent(Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/MetaInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    const-string v7, "clarificationRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    nop

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    invoke-static {v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper;->getClarificationRenderer(Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/MetaInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    const-string v7, "emergencyOneboxRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    nop

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-static {v7, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper;->getEmergencyOneboxRenderer(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V

    :cond_79
    goto :goto_2c

    :cond_7a
    goto :goto_9

    :cond_7b
    return-object v0
.end method

.method static synthetic lambda$getEmergencyOneboxRenderer$0(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p0, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "singleActionEmergencySupportRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method static synthetic lambda$getEmergencyOneboxRenderer$1(Ljava/lang/Object;)Lcom/grack/nanojson/JsonObject;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "singleActionEmergencySupportRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method
