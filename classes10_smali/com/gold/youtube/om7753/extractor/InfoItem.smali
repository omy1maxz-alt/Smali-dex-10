.class public abstract Lcom/gold/youtube/om7753/extractor/InfoItem;
.super Ljava/lang/Object;
.source "InfoItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final infoType:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

.field private final name:Ljava/lang/String;

.field private final serviceId:I

.field private thumbnails:Ljava/util/List;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->thumbnails:Ljava/util/List;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->infoType:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->serviceId:I

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInfoType()Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->infoType:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->serviceId:I

    return v0
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbnails(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/InfoItem;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[url=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
