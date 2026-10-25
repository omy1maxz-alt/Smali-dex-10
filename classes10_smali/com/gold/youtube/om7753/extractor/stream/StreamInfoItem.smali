.class public Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;
.super Lcom/gold/youtube/om7753/extractor/InfoItem;
.source "StreamInfoItem.java"


# instance fields
.field private contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field private duration:J

.field private shortDescription:Ljava/lang/String;

.field private shortFormContent:Z

.field private final streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/stream/StreamType;)V
    .registers 7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;->STREAM:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/InfoItem;-><init>(Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->viewCount:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->duration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->shortFormContent:Z

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-void
.end method


# virtual methods
.method public getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->duration:J

    return-wide v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploadDate:Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->viewCount:J

    return-wide v0
.end method

.method public isShortFormContent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->shortFormContent:Z

    return v0
.end method

.method public isUploaderVerified()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return v0
.end method

.method public setContentAvailability(Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->contentAvailability:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->duration:J

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public setShortFormContent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->shortFormContent:Z

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploadDate:Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return-void
.end method

.method public setViewCount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->viewCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->streamType:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    iget-object v2, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    iget-wide v4, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->viewCount:J

    iget-wide v6, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->duration:J

    iget-object v8, v0, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->getInfoType()Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    move-result-object v9

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->getServiceId()I

    move-result v10

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItem;->isUploaderVerified()Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamInfoItem{streamType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uploaderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', textualUploadDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', viewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uploaderUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', infoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', thumbnails=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', uploaderVerified=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
