.class public abstract Lcom/gold/youtube/om7753/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

.field private forcedContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

.field private forcedLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

.field private final linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

.field private pageFetched:Z

.field private final service:Lcom/gold/youtube/om7753/extractor/StreamingService;


# direct methods
.method protected constructor <init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->pageFetched:Z

    const-string v0, "service is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/StreamingService;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->service:Lcom/gold/youtube/om7753/extractor/StreamingService;

    const-string v0, "LinkHandler is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v0

    const-string v1, "downloader is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    return-void
.end method


# virtual methods
.method protected assertPageFetched()V
    .registers 3

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->pageFetched:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page is not fetched. Make sure you call fetchPage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fetchPage()V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->TAG:Ljava/lang/String;

    const-string v1, "base fetchPage called"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->pageFetched:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->TAG:Ljava/lang/String;

    const-string v1, "Page already fetched; returning"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/Extractor;->onFetchPage(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->pageFetched:Z

    return-void
.end method

.method public forceContentCountry(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    return-void
.end method

.method public forceLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    return-object v0
.end method

.method public getExtractorContentCountry()Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Extractor;->getService()Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getContentCountry()Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    :goto_f
    return-object v0
.end method

.method public getExtractorLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Extractor;->getService()Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->forcedLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    :goto_f
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHandler()Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/gold/youtube/om7753/extractor/StreamingService;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->service:Lcom/gold/youtube/om7753/extractor/StreamingService;

    return-object v0
.end method

.method public getServiceId()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->service:Lcom/gold/youtube/om7753/extractor/StreamingService;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceId()I

    move-result v0

    return v0
.end method

.method public getTimeAgoParser()Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Extractor;->getService()Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Extractor;->getExtractorLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getTimeAgoParser(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->linkHandler:Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isPageFetched()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/Extractor;->pageFetched:Z

    return v0
.end method

.method public abstract onFetchPage(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
