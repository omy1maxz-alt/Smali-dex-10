.class Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;
.super Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
.source "YoutubeStreamInfoItemLockupExtractor.java"


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public forAvatarExtraction()Lcom/grack/nanojson/JsonObject;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method
