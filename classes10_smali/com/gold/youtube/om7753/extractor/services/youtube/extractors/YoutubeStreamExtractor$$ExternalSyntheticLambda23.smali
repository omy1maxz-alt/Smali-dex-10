.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->lambda$getAudioStreamBuilderHelper$16$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    move-result-object p1

    return-object p1
.end method
