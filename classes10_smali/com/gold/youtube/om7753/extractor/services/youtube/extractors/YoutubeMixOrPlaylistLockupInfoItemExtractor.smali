.class public Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;


# instance fields
.field public final firstMetadataRow:Lcom/grack/nanojson/JsonObject;

.field public final lockupMetadataViewModel:Lcom/grack/nanojson/JsonObject;

.field public final lockupViewModel:Lcom/grack/nanojson/JsonObject;

.field public final thumbnailViewModel:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v0, "primaryThumbnail"

    const-string v1, "thumbnailViewModel"

    const-string v2, "contentImage"

    const-string v3, "collectionThumbnailViewModel"

    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->thumbnailViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "lockupMetadataViewModel"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->lockupMetadataViewModel:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "contentMetadataViewModel"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "metadataRows"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->firstMetadataRow:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->lockupMetadataViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v1, "rendererContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commandContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "watchEndpoint"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playlistId"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_27
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-object v1

    :cond_2e
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist ID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getThumbnails()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->thumbnailViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "sources"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->firstMetadataRow:Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadataParts"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "rendererContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commandContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "onTap"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUploaderVerified()Z
    .registers 4

    const/4 v2, 0x0

    return v2
.end method
