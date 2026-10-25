.class public abstract Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "SearchQueryHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    return-object p1
.end method

.method public fromQuery(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;
    .registers 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    return-object v0
.end method

.method public fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;
    .registers 6

    new-instance v0, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;

    invoke-super {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;-><init>(Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandlerFactory;->getSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public abstract getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
