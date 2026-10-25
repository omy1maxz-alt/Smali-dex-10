.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

.field public final synthetic f$1:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$1:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$1:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    invoke-virtual/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->lambda$getStreamsFromStreamingDataKey$18$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;

    move-result-object p1

    return-object p1
.end method
