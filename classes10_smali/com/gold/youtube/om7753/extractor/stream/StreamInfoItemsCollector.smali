.class public Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;
.super Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;
.source "StreamInfoItemsCollector.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic commit(Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;)V
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->commit(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public commit(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->extract(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addItem(Lcom/gold/youtube/om7753/extractor/InfoItem;)V
    :try_end_7
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    goto :goto_f

    :catch_d
    move-exception v0

    :goto_e
    nop

    :goto_f
    return-void
.end method

.method public bridge synthetic commit(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->commit(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public extract(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;
    .registers 7

    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->isAd()Z

    move-result v0

    if-nez v0, :cond_ac

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/stream/StreamType;)V

    :try_start_1b
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setDuration(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_27
    :try_start_27
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_33
    :try_start_33
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_3f
    :try_start_3f
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setUploadDate(Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;)V
    :try_end_46
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_3f .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_4b
    :try_start_4b
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getViewCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setViewCount(J)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_57
    :try_start_57
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_63
    :try_start_63
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_6f
    :try_start_6f
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_7b
    :try_start_7b
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setUploaderVerified(Z)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_87
    :try_start_87
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setShortDescription(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_93
    :try_start_93
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->isShortFormContent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setShortFormContent(Z)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_9f
    :try_start_9f
    invoke-interface {p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;->getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->setContentAvailability(Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a6} :catch_a7

    goto :goto_ab

    :catch_a7
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_ab
    return-object v0

    :cond_ac
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException;

    const-string v1, "Found ad"

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemsCollector;->extract(Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;

    move-result-object p1

    return-object p1
.end method
