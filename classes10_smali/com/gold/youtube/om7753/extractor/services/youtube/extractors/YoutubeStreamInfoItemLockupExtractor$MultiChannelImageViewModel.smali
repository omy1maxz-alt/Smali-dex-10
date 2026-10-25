.class Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;
.super Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
.source "YoutubeStreamInfoItemLockupExtractor.java"


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method static synthetic lambda$forUploaderUrlExtraction$0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 2

    const-string v0, "listItemViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forAvatarExtraction()Lcom/grack/nanojson/JsonObject;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "avatars"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

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

    const-string v1, "showDialogCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "panelLoadingStrategy"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "inlineContent"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "dialogViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "customContent"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "listViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "listItems"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method
