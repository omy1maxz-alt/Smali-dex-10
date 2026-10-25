.class public abstract Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;
.source "ListLinkHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromId(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1
.end method

.method public fromId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    invoke-super {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->fromId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public fromId(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    invoke-super {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->fromId(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 10

    invoke-virtual {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 11

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1
.end method

.method public fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 5

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->followGoogleRedirectIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    return-object v2
.end method

.method public fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 5

    const-string v0, "URL may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    invoke-super {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public getAvailableContentFilter()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableSortFilter()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
