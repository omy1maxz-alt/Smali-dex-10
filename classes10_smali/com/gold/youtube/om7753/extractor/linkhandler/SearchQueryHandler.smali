.class public Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
.source "SearchQueryHandler.java"


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;)V
    .registers 8

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    iget-object v5, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSearchString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandler;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
