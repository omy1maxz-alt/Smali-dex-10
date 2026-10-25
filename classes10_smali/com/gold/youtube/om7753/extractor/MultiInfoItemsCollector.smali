.class public Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;
.super Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;
.source "MultiInfoItemsCollector.java"


# instance fields
.field private final streamCollector:Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;-><init>(I)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;->streamCollector:Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    return-void
.end method


# virtual methods
.method public extract(Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;)Lcom/gold/youtube/om7753/extractor/InfoItem;
    .registers 5

    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;->streamCollector:Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->extract(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extractor type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;->extract(Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;)Lcom/gold/youtube/om7753/extractor/InfoItem;

    move-result-object p1

    return-object p1
.end method

.method public getErrors()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;->streamCollector:Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->reset()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MultiInfoItemsCollector;->streamCollector:Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->reset()V

    return-void
.end method
