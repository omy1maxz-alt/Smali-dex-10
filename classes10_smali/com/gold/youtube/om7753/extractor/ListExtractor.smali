.class public abstract Lcom/gold/youtube/om7753/extractor/ListExtractor;
.super Lcom/gold/youtube/om7753/extractor/Extractor;
.source "ListExtractor.java"


# static fields
.field public static final ITEM_COUNT_INFINITE:J = -0x2L

.field public static final ITEM_COUNT_MORE_THAN_100:J = -0x3L

.field public static final ITEM_COUNT_UNKNOWN:J = -0x1L


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/Extractor;-><init>(Lcom/gold/youtube/om7753/extractor/StreamingService;Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public abstract getInitialPage()Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;
.end method

.method public bridge synthetic getLinkHandler()Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/ListExtractor;->getLinkHandler()Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHandler()Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 2

    invoke-super {p0}, Lcom/gold/youtube/om7753/extractor/Extractor;->getLinkHandler()Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    return-object v0
.end method

.method public abstract getPage(Lcom/gold/youtube/om7753/extractor/Page;)Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;
.end method
