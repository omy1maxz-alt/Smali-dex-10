.class public abstract Lcom/gold/youtube/om7753/extractor/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"


# instance fields
.field private final serviceId:I

.field private final serviceInfo:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Set;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/StreamingService;->serviceId:I

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;

    invoke-direct {v0, p2, p3}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/StreamingService;->serviceInfo:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;

    return-void
.end method


# virtual methods
.method public abstract getBaseUrl()Ljava/lang/String;
.end method

.method public getContentCountry()Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredContentCountry()Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getSupportedCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    sget-object v1, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    return-object v1
.end method

.method public final getLinkTypeByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;
    .registers 7

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->followGoogleRedirectIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getStreamLHFactory()Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->STREAM:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    return-object v4

    :cond_13
    sget-object v4, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->NONE:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    return-object v4
.end method

.method public getLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 6

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getSupportedLocalizations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getSupportedLocalizations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    return-object v2

    :cond_32
    goto :goto_17

    :cond_33
    sget-object v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-object v1
.end method

.method public final getServiceId()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/StreamingService;->serviceId:I

    return v0
.end method

.method public getServiceInfo()Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/StreamingService;->serviceInfo:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;

    return-object v0
.end method

.method public abstract getStreamExtractor(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;
.end method

.method public getStreamExtractor(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getStreamLHFactory()Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getStreamExtractor(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getStreamLHFactory()Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;
.end method

.method public getSupportedCountries()Ljava/util/List;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLocalizations()Ljava/util/List;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeAgoParser(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;
    .registers 6

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/localization/Localization;-><init>(Ljava/lang/String;)V

    nop

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    move-result-object v2

    if-eqz v2, :cond_22

    return-object v2

    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Localization is not supported (\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/StreamingService;->serviceId:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/StreamingService;->serviceInfo:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
