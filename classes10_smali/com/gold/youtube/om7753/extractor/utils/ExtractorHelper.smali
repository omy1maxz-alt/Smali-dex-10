.class public final Lcom/gold/youtube/om7753/extractor/utils/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemsPageOrLogError(Lcom/gold/youtube/om7753/extractor/Info;Lcom/gold/youtube/om7753/extractor/ListExtractor;)Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/ListExtractor;->getInitialPage()Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/Info;->addAllErrors(Ljava/util/Collection;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/Info;->addError(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;

    move-result-object v1

    return-object v1
.end method

.method public static getRelatedItemsOrLogError(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Ljava/util/List;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;->getRelatedItems()Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_b
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addAllErrors(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getRelatedVideosOrLogError(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Ljava/util/List;
    .registers 3

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorHelper;->getRelatedItemsOrLogError(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
