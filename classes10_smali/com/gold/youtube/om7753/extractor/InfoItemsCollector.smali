.class public abstract Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;
.super Ljava/lang/Object;
.source "InfoItemsCollector.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/Collector;


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private final errors:Ljava/util/List;

.field private final itemList:Ljava/util/List;

.field private final serviceId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->serviceId:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected addError(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addItem(Lcom/gold/youtube/om7753/extractor/InfoItem;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commit(Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->extract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/InfoItem;

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->addItem(Lcom/gold/youtube/om7753/extractor/InfoItem;)V
    :try_end_9
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_9} :catch_f
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    goto :goto_11

    :catch_f
    move-exception v0

    :goto_10
    nop

    :goto_11
    return-void
.end method

.method public bridge synthetic commit(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->commit(Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;)V

    return-void
.end method

.method public getErrors()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_b
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->serviceId:I

    return v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
