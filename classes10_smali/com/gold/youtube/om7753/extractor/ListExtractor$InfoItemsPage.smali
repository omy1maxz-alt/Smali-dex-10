.class public Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;
.super Ljava/lang/Object;
.source "ListExtractor.java"


# static fields
.field private static final EMPTY:Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;


# instance fields
.field private final errors:Ljava/util/List;

.field private final itemsList:Ljava/util/List;

.field private final nextPage:Lcom/gold/youtube/om7753/extractor/Page;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;-><init>(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/Page;Ljava/util/List;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->EMPTY:Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;Lcom/gold/youtube/om7753/extractor/Page;)V
    .registers 5

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;-><init>(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/Page;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/Page;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->errors:Ljava/util/List;

    return-void
.end method

.method public static emptyPage()Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->EMPTY:Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;

    return-object v0
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    return-object v0
.end method

.method public getNextPage()Lcom/gold/youtube/om7753/extractor/Page;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    return-object v0
.end method

.method public hasNextPage()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->nextPage:Lcom/gold/youtube/om7753/extractor/Page;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/Page;->isValid(Lcom/gold/youtube/om7753/extractor/Page;)Z

    move-result v0

    return v0
.end method
