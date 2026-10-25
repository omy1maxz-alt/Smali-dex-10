.class public Lcom/gold/youtube/om7753/util/RelatedStreamInfo;
.super Lcom/gold/youtube/om7753/extractor/ListInfo;
.source "RelatedStreamInfo.java"


# direct methods
.method public constructor <init>(ILcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/ListInfo;-><init>(ILcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method

.method public static getInfo(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;)Lcom/gold/youtube/om7753/util/RelatedStreamInfo;
    .registers 8

    new-instance v6, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/util/RelatedStreamInfo;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Info;->getServiceId()I

    move-result v1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/gold/youtube/om7753/util/RelatedStreamInfo;-><init>(ILcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getRelatedStreams()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    return-object v0
.end method
