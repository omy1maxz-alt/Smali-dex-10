.class public Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
.source "ListLinkHandler.java"


# instance fields
.field protected final contentFilters:Ljava/util/List;

.field protected final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V
    .registers 8

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;)V
    .registers 8

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    iget-object v5, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentFilters()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    return-object v0
.end method

.method public getSortFilter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    return-object v0
.end method
