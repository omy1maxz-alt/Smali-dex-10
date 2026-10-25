.class public abstract Lcom/gold/youtube/om7753/extractor/ListInfo;
.super Lcom/gold/youtube/om7753/extractor/Info;
.source "ListInfo.java"


# instance fields
.field private final contentFilters:Ljava/util/List;

.field private nextPage:Lcom/gold/youtube/om7753/extractor/Page;

.field private relatedItems:Ljava/util/List;

.field private final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/Info;-><init>(ILcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->contentFilters:Ljava/util/List;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 10

    invoke-direct/range {p0 .. p5}, Lcom/gold/youtube/om7753/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/gold/youtube/om7753/extractor/ListInfo;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    iput-object p6, p1, Lcom/gold/youtube/om7753/extractor/ListInfo;->contentFilters:Ljava/util/List;

    iput-object p7, p1, Lcom/gold/youtube/om7753/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentFilters()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->contentFilters:Ljava/util/List;

    return-object v0
.end method

.method public getNextPage()Lcom/gold/youtube/om7753/extractor/Page;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public getSortFilter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextPage()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/Page;->isValid(Lcom/gold/youtube/om7753/extractor/Page;)Z

    move-result v0

    return v0
.end method

.method public setNextPage(Lcom/gold/youtube/om7753/extractor/Page;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-void
.end method
