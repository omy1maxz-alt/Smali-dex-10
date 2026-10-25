.class public abstract Lcom/gold/youtube/om7753/extractor/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_ID_UNKNOWN:I = -0x1

.field public static final ID_UNKNOWN:Ljava/lang/String; = " "

.field public static final ITAG_NOT_AVAILABLE_OR_NOT_APPLICABLE:I = -0x1


# instance fields
.field private final content:Ljava/lang/String;

.field private final deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field private final id:Ljava/lang/String;

.field private final isUrl:Z

.field private final manifestUrl:Ljava/lang/String;

.field private final mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->content:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->isUrl:Z

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    iput-object p6, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-void
.end method

.method public static containSimilarStream(Lcom/gold/youtube/om7753/extractor/stream/Stream;Ljava/util/List;)Z
    .registers 6

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/stream/Stream;

    invoke-virtual {p0, v2}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->equalStats(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    goto :goto_c

    :cond_21
    return v1
.end method


# virtual methods
.method public equalStats(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 4

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iget v0, v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->id:I

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iget v1, v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->id:I

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/stream/Stream;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->isUrl:Z

    iget-boolean v1, p1, Lcom/gold/youtube/om7753/extractor/stream/Stream;->isUrl:Z

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->deliveryMethod:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-object v0
.end method

.method public getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public getFormatId()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iget v0, v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->id:I

    return v0

    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
.end method

.method public getManifestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->isUrl:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->content:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public isUrl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Stream;->isUrl:Z

    return v0
.end method
