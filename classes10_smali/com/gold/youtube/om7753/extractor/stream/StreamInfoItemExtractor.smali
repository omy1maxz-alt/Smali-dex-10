.class public interface abstract Lcom/gold/youtube/om7753/extractor/stream/StreamInfoItemExtractor;
.super Ljava/lang/Object;
.source "StreamInfoItemExtractor.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;


# virtual methods
.method public getContentAvailability()Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public abstract getDuration()J
.end method

.method public getShortDescription()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getStreamType()Lcom/gold/youtube/om7753/extractor/stream/StreamType;
.end method

.method public abstract getTextualUploadDate()Ljava/lang/String;
.end method

.method public abstract getUploadDate()Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .registers 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method

.method public abstract getViewCount()J
.end method

.method public abstract isAd()Z
.end method

.method public isShortFormContent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isUploaderVerified()Z
.end method
